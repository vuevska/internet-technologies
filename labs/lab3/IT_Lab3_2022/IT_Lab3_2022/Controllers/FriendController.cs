using IT_Lab3_2022.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IT_Lab3_2022.Controllers
{
    public class FriendController : Controller
    {
        private static List<FriendModel> friendsList = new List<FriendModel>
        {
            new FriendModel()
            {
                Friend_Id = 0,
                Ime = "Maja",
                MestoZiveenje = "Skopje"
            },
            new FriendModel()
            {
                Friend_Id = 1,
                Ime = "Daniel",
                MestoZiveenje = "Veles"
            },
            new FriendModel()
            {
                Friend_Id = 2,
                Ime = "Stojance",
                MestoZiveenje = "Bitola"
            }
        };

        // GET: Friend
        public ActionResult ShowFriends()
        {
            return View(friendsList);
        }

        public ActionResult AddFriend()
        {
            FriendModel model = new FriendModel();
            return View(model);
        }

        [HttpPost]
        public ActionResult AddFriend(FriendModel model)
        {
            if (ModelState.IsValid == false)
            {
                return View("AddFriend", model);
            }
            friendsList.Add(model);
            return View("ShowFriends", friendsList);
        }

        public ActionResult UpdateFriend(int id)
        {
            var model = friendsList.ElementAt(id);
            model.Id = id;
            return View(model);
        }

        [HttpPost]
        public ActionResult UpdateFriend(FriendModel model)
        {
            if(ModelState.IsValid == false)
            {
                return View("AddFriend", model);
            }
            var update = friendsList.ElementAt(model.Id);
            update.Ime = model.Ime;
            update.MestoZiveenje = model.MestoZiveenje;
            return View("ShowFriends", friendsList);
        }

        public ActionResult DeleteFriend(int id)
        {
            friendsList.RemoveAt(id);
            return View("ShowFriends", friendsList);
        }
    }
}