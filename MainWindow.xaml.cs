﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.SqlClient;
using System.Data;

namespace Attendance
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            
        }
        
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-QUDI77S\MSSQLSERVER01;Initial Catalog=AttendanceManagement;Integrated Security=True");
        SqlCommand Cmd;
        SqlDataAdapter Sda;
        SqlDataReader dr;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();

        public string date = DateTime.Now.ToString("dd-MM-yyyy");

        


        DataTable Dt = new DataTable();

        private void Grid_Loaded(object sender, RoutedEventArgs e)
        {

            conn.Open();

            Cmd = new SqlCommand("select u.[User Id],u.[Full Name],u.Email,c.[Class Name] from Users u inner join Classes c on u.[Class Id]=c.[Id Class] where u.[Role Id]=4", conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable t = new DataTable();
            t.Load(dr); 
            dg.ItemsSource = t.DefaultView;
            dr.Close();

            conn.Close();

            late_temp.Visibility = Visibility.Hidden;
            abs_temp.Visibility = Visibility.Hidden;


        }

        private void btn_ajouter_ab_Click(object sender, RoutedEventArgs e)
        {
            late_temp.Visibility = Visibility.Visible;
            abs_temp.Visibility = Visibility.Visible;

        }

        private void check_absent_checked(object sender, RoutedEventArgs e)
        {
            
            check_retard_unchecked(sender, e);
            DataRowView row = dg.SelectedItem as DataRowView;
            int id_student =Convert.ToInt32(row.Row[0].ToString());          
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO Attendance (Date, IsJustified, [Student id],Absent,Retard) VALUES ('" + date + "','false','"+id_student+"', 'oui' , 'non')", conn);            
            cmd1.ExecuteNonQuery();
            conn.Close();
        }

        private void check_absent_unchecked(object sender, RoutedEventArgs e)
        {
            
            DataRowView row = dg.SelectedItem as DataRowView;
            int id_student = Convert.ToInt32(row.Row[0].ToString());
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("delete from Attendance where [Student id]='"+id_student+ "' and Date = '" + date + "' and Absent = 'oui'", conn);
            cmd1.ExecuteNonQuery();
            conn.Close();

        }

        

        private void check_retard_checked(object sender, RoutedEventArgs e)
        {
            check_absent_unchecked(sender, e);
            DataRowView row = dg.SelectedItem as DataRowView;
            int id_student = Convert.ToInt32(row.Row[0].ToString());
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("INSERT INTO Attendance (Date, IsJustified, [Student id],Absent,Retard) VALUES ('" + date + "','false','" + id_student + "', 'non' , 'oui')", conn);
            cmd1.ExecuteNonQuery();
            conn.Close();
        }

        private void check_retard_unchecked(object sender, RoutedEventArgs e)
        {
            DataRowView row = dg.SelectedItem as DataRowView;
            int id_student = Convert.ToInt32(row.Row[0].ToString());
            conn.Open();
            SqlCommand cmd1 = new SqlCommand("delete from Attendance where [Student id]='" + id_student + "' and Date = '" + date + "'and retard = 'oui'", conn);
            cmd1.ExecuteNonQuery();
            conn.Close();
        }

        private void afficher_les_absents_Click(object sender, RoutedEventArgs e)
        {
            conn.Open();

            Cmd = new SqlCommand("select u.[User Id],u.[Full Name],u.Email,c.[Class Name] from Users u inner join Classes c on u.[Class Id]=c.[Id Class] where u.[Role Id]=4", conn);
            SqlDataReader dr = Cmd.ExecuteReader();
            DataTable t = new DataTable();
            t.Load(dr);
            dg.ItemsSource = t.DefaultView;
            dr.Close();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }
    }
    }
