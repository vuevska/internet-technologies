using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace IT_Lab5_2022.Models
{
    public class Friend
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [Range(0, 200, ErrorMessage = "Id must be a number from 0 and 200")]
        [Display(Name = "Friend ID.")]
        public int Friend_Id { get; set; }

        [Required]
        [Display(Name = "Name")]
        public string Ime { get; set; }

        [Required]
        [Display(Name = "Place")]
        public string MestoZiveenje { get; set; }
    }

}