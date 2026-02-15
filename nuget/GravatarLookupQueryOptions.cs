using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.GravatarLookup
{
    /// <summary>
    /// Query options for the Gravatar Lookup API
    /// </summary>
    public class GravatarLookupQueryOptions
    {
        /// <summary>
        /// The email address to lookup the Gravatar profile of
        /// </summary>
        [JsonProperty("email")]
        public string Email { get; set; }
    }
}
