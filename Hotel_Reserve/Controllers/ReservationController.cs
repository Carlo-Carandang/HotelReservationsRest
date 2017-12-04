using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Hotel_Reserve.Models;
using Hotel_Reserve.Services;

namespace Hotel_Reserve.Controllers
{
    public class ReservationController : Controller
    {
        ReservationContext db = new ReservationContext();

        public ReservationContext Db { get => db; set => db = value; }

        // -----------------------------------------------View Reservations--------------------------------
        public ActionResult Index(int id)
        {
            GetReservation service = new GetReservation();
            if(Session["Email"]!=null)
                {
                Session["CustomerId"] = id;
                var model = service.getAllReservations();
                List<Reservation> res = model.Where(reserve => reserve.Cid == id).ToList();
                return View(res);
            }
            else
            {
                return RedirectToAction("LoginCustomer","Customer");
            }
        }

        //-------------------------------------GET: Create a reservation----------------------------------
        public ActionResult Create()
        {
            List<SelectListItem> ObjItem2 = new List<SelectListItem>()
            {
                new SelectListItem {Text="1",Value="1" },
                new SelectListItem {Text="2",Value="2"},
                new SelectListItem {Text="3",Value="3" },
                new SelectListItem {Text="4",Value="4"},
                new SelectListItem {Text="5",Value= "5"},

            };
            ViewBag.Numbers = ObjItem2;
            if (Session["Email"] != null)
            {
                return View();
            }
            else
            {
                return RedirectToAction("LoginCustomer","Customer");
            }
                
        }
        //------------------------------------POST: Create a reservation-----------------------------------------
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Reservation reserve)
        {
            AddReservationService addreservation = new AddReservationService();
            int a = Int32.Parse(Session["CustomerId"].ToString());
            Reservation reservation = new Reservation();
            reservation.CheckInDate = reserve.CheckInDate;
            reservation.CheckOutDate = reserve.CheckOutDate;
            reservation.NumberOfGuest = reserve.NumberOfGuest;
            reservation.NumberOfRoom= reserve.NumberOfRoom;
            reservation.Cid = a;
            if (ModelState.IsValid)
            {
                addreservation.reservation(reservation);
              //  Db.Reservations.Add(reservation);
              //  Db.SaveChanges();
                return RedirectToAction("Index", "Reservation", new { id = a });
            }

            return View();
        }
        //---------------------------------GET: Edit a reservation--------------------------------------------------
        public ActionResult Edit(int? id )
        {
            GetReservation service = new GetReservation();
            List<SelectListItem> ObjItem2 = new List<SelectListItem>()
            {
                new SelectListItem {Text="1",Value="1" },
                new SelectListItem {Text="2",Value="2"},
                new SelectListItem {Text="3",Value="3" },
                new SelectListItem {Text="4",Value="4"},
                new SelectListItem {Text="5",Value= "5"},

            };
            ViewBag.Numbers = ObjItem2;
            var model = service.getAllReservations();

            if (id == null || Session["Email"] == null)
            {
                return RedirectToAction("LoginCustomer", "Customer");
            }
            Reservation reservation = model.Where(reserve => reserve.Id == id).First();
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }
        //--------------------------------------POST: Edit a reservation--------------------------------------------
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Reservation reserve)
        {
            
            int a = Int32.Parse(Session["CustomerId"].ToString());
            EditReservationService editreservation = new EditReservationService();
            Reservation reservation = new Reservation();
            reservation.Id = reserve.Id;
            reservation.CheckInDate = reserve.CheckInDate;
            reservation.CheckOutDate = reserve.CheckOutDate;
            reservation.NumberOfGuest = reserve.NumberOfGuest;
            reservation.NumberOfRoom = reserve.NumberOfRoom;
            reservation.Cid = a;

            if (ModelState.IsValid)
            {
                //Db.Entry(reserve).State = EntityState.Modified;
                //Db.SaveChanges();
                editreservation.reservation(reservation);
                return RedirectToAction("Index","Reservation",new { id = a });
            }

            return View(reservation);
        }
        //-----------------------------------GET: delete a reservation-------------------------------------------------------
        public ActionResult Delete(int id)
        {
            GetReservation service = new GetReservation();
            if ( Session["Email"]==null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var model = service.getAllReservations();
            Reservation reservation = model.Where(reserve => reserve.Id == id).First();
            if (reservation == null)
            {
                return HttpNotFound();
            }
            return View(reservation);
        }

        //---------------------------------------POST: Reservations/Delete/5-----------------------------------------------
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DeleteReservationService deletereservation = new DeleteReservationService();

            int a = Int32.Parse(Session["CustomerId"].ToString());
            var model = deletereservation.reservation(id);
            Reservation reservation = Db.Reservations.Find(id);
            //Db.Reservations.Remove(reservation);
            //Db.SaveChanges();
            return RedirectToAction("Index", "Reservation", new { id = a });
        }
    }
}