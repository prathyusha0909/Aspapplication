using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Aspapplication.Models
{
   internal class ProductDAO
    {
        //All stored procedure names go here. verify the actual/correct names later.
        const string GETALL = "sp_GetAllProducts";
        const string GETDETAILS = "sp_GetProductById";
        const string INSERT = "sp_CreateProduct";
        const string UPDATE = "sp_UpdateProduct";

        SqlConnection connection;
        string connectionString = "Data Source=(local)\\sqldev2016;initial catalog=northwind;integrated security=sspi";

            #region Helper Methods for Connection Management
        private void CreateConnection()
        {
            if (connection == null)
                connection = new SqlConnection(connectionString);
        }
        private void OpenConnection()
        {
            if (connection == null)
                CreateConnection();
            if (connection.State != ConnectionState.Open)
                connection.Open();
        }
        private void CloseConnection()
        {
            if (connection != null)
                if (connection.State != ConnectionState.Closed) connection.Close();
                connection = null;
        }
        private Product CreateProductFromReader(SqlDataReader reader)
        {
            Product p = new Product();
            p.ProductId = Convert.ToInt32("0" + reader["ProductId"].ToString());
            p.ProductName = reader["ProductName"].ToString();
            p.UnitPrice = Convert.ToDecimal("0" + reader["UnitPrice"].ToString());
            p.UnitsInStock = Convert.ToInt16("0" + reader["UnitsInStock"].ToString());
            p.Discontinued = Convert.ToBoolean( reader["Discontinued"].ToString());
            p.CategoryId = Convert.ToInt32("0" + reader["CategoryId"].ToString());
            return p;

        }
        #endregion

        #region DataAccess Public Methods
        public List<Product> GetProducts(string criteria)
        {
            //Check whether the argument is passed or not
            //if (string.IsNullOrEmpty(criteria))
            //{
            //    throw new ArgumentNullException(nameof(criteria), "Reguired argument missing.");
            //}
            List<Product> productList = new List<Product>();
            //create the command and setup the parameters
            CreateConnection();
            SqlCommand command = connection.CreateCommand();
            command.Connection = connection;
            command.CommandText = GETALL;
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@search", criteria);
            //opens the connection and executes the statements within the try catch block
            SqlDataReader reader = null;
            try
            {
                OpenConnection();
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    var product = CreateProductFromReader(reader);
                    productList.Add(product);
                }
            }
            catch (SqlException sqle)
            {
                throw sqle;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (reader != null) if (!reader.IsClosed) reader.Close();

                CloseConnection();
            }
            return productList;
        }


        public Product GetProduct(int ProductID)
        {
            if(ProductID<0)
            {
                throw new ArgumentNullException(nameof(ProductID), "cannot be negative.");
            }
            Product Product = new Product();
            //create the command and setup the parameters
            CreateConnection();
            SqlCommand command = connection.CreateCommand();
            command.Connection = connection;
            command.CommandText = GETDETAILS;
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ProductId", ProductID);
            //opens the connection and executes the statements within the try catch block
            SqlDataReader reader = null;
            try
            {
                OpenConnection();
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    var product = CreateProductFromReader(reader);
                    //productList.Add(product);
                }
            }
            catch (SqlException sqle)
            {
                throw sqle;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (reader != null) if (!reader.IsClosed) reader.Close();

                CloseConnection();
            }
            return Product;
        }

        public void CreateProduct(Product item)
        {
            if (item == null)
            {
                throw new ArgumentNullException(nameof(item), "required argument missing");
            }
            CreateConnection();
            SqlCommand command = new SqlCommand(INSERT, connection);
            command.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter();
            p1.ParameterName = "@productName";
            p1.SqlDbType = SqlDbType.VarChar;
            p1.Size = 50;
            p1.Direction = ParameterDirection.Input;
            p1.Value = item.ProductName;
            command.Parameters.Add(p1);





            command.Parameters.Add(new SqlParameter("@UnitPrice", item.UnitPrice));
            command.Parameters.Add(new SqlParameter("@UnitsInStock", item.UnitsInStock));
            command.Parameters.AddWithValue("@Discontinued", item.UnitPrice);

            command.Parameters.Add(new SqlParameter("@CategoryId", item.CategoryId));





            OpenConnection();
            SqlTransaction trans = connection.BeginTransaction();



            command.Transaction = trans;
            try
            {
                command.ExecuteNonQuery();
                trans.Commit();
            }
            catch (SqlException)
            {
                trans.Rollback();
                throw;



            }
            catch (Exception)
            {
                trans.Rollback();
                throw;
            }
            finally
            {
                CloseConnection();
            }



        }
        public void UpdateProduct(Product item)
        {
            
                if (item == null)
                {
                    throw new ArgumentNullException(nameof(item), "required argument missing");
                }
                CreateConnection();
                SqlCommand command = new SqlCommand(UPDATE, connection);
                command.CommandType = CommandType.StoredProcedure;
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@productName";
                p1.SqlDbType = SqlDbType.VarChar;
                p1.Size = 50;
                p1.Direction = ParameterDirection.Input;
                p1.Value = item.ProductName;
                //command.Parameters.Add(p1);  not required
                command.Parameters.Add(new SqlParameter("@ProductId", item.ProductId));
                command.Parameters.Add(new SqlParameter("@ProductName", item.ProductName));
                command.Parameters.Add(new SqlParameter("@UnitPrice", item.UnitPrice));
                command.Parameters.Add(new SqlParameter("@UnitsInStock", item.UnitsInStock));
                command.Parameters.AddWithValue("@Discontinued", item.Discontinued);
                command.Parameters.AddWithValue("@CategoryId", item.CategoryId);



                OpenConnection();
                SqlTransaction trans = connection.BeginTransaction();
                command.Transaction = trans;
                try
                {
                    command.ExecuteNonQuery();
                    trans.Commit();



                }
                catch (SqlException ex)
                {
                    trans.Rollback();
                    throw ex;
                }
                catch (Exception)
                {
                    trans.Rollback();
                    throw;
                }
                finally
                {
                    CloseConnection();
                }



            }


        }
        }
        #endregion
    

