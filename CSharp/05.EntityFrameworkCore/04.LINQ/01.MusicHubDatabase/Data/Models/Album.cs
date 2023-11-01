﻿using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace _01.MusicHubDatabase.Data.Models
{
    public class Album
    {
        public Album()
        {
            Songs = new List<Song>();
        }

        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(40)]
        public string Name { get; set; } = null!;

        [Required]
        public DateTime ReleaseDate { get; set; }

        public int Price { get; set; }

        public int ProducerId { get; set; }

        [ForeignKey(nameof(Id))]
        public Producer Producer { get; set; }

        public ICollection<Song> Songs { get; set; }
    }
}
