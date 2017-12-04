using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using Hotel_Reserve.Models;

namespace Hotel_Reserve.Services
{
    public class DeleteReservationService
    {
        private string getAllURL = "http://localhost:8080/RESTSample/rest/Reservation/Delete";

        public Reservation reservation(int id)
        {
            getAllURL = getAllURL + "/" + id;
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(getAllURL);

            // Add an Accept header for JSON format.
            client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));

            // List data response.

            //HttpResponseMessage response = client.GetAsync(urlParameters).Result;  // Blocking call!

            HttpResponseMessage response = client.DeleteAsync(getAllURL).Result;  // Blocking call!
            if (response.IsSuccessStatusCode)
            {
                // Parse the response body. Blocking!

                var dataObjects = response.Content.ReadAsAsync<Reservation>().Result;
                //var dataObjects = response.Content.R
                //foreach (var d in dataObjects)
                //{
                //    Console.WriteLine("{0}", d.Name);
                //}

                return dataObjects;
            }
            else
            {
                return null;
            }
        }
    }
}