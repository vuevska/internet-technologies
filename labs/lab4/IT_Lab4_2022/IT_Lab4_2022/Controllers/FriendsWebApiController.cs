﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using IT_Lab4_2022.Models;

namespace IT_Lab4_2022.Controllers
{
    public class FriendsWebApiController : ApiController
    {
        readonly ApplicationDbContext db = new ApplicationDbContext();

        // GET: api/FriendsWebApi
        public IQueryable<Friend> GetFriends()
        {
            return db.Friends;
        }

        // GET: api/FriendsWebApi/5
        [ResponseType(typeof(Friend))]
        public IHttpActionResult GetFriend(int id)
        {
            Friend friend = db.Friends.Find(id);
            if (friend == null)
            {
                return NotFound();
            }

            return Ok(friend);
        }

        // PUT: api/FriendsWebApi/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutFriend(int id, Friend friend)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != friend.Id)
            {
                return BadRequest();
            }

            db.Entry(friend).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!FriendExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/FriendsWebApi
        [ResponseType(typeof(Friend))]
        public IHttpActionResult PostFriend(Friend friend)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Friends.Add(friend);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = friend.Id }, friend);
        }

        // DELETE: api/FriendsWebApi/5
        [ResponseType(typeof(Friend))]
        public IHttpActionResult DeleteFriend(int id)
        {
            Friend friend = db.Friends.Find(id);
            if (friend == null)
            {
                return NotFound();
            }

            db.Friends.Remove(friend);
            db.SaveChanges();

            return Ok(friend);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool FriendExists(int id)
        {
            return db.Friends.Count(e => e.Id == id) > 0;
        }
    }
}