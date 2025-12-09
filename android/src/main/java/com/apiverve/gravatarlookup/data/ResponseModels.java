// Converter.java

// To use this code, add the following Maven dependency to your project:
//
//
//     com.fasterxml.jackson.core     : jackson-databind          : 2.9.0
//     com.fasterxml.jackson.datatype : jackson-datatype-jsr310   : 2.9.0
//
// Import this package:
//
//     import com.apiverve.data.Converter;
//
// Then you can deserialize a JSON string with
//
//     GravatarLookupData data = Converter.fromJsonString(jsonString);

package com.apiverve.gravatarlookup.data;

import java.io.IOException;
import com.fasterxml.jackson.databind.*;
import com.fasterxml.jackson.databind.module.SimpleModule;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.util.*;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;

public class Converter {
    // Date-time helpers

    private static final DateTimeFormatter DATE_TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_DATE_TIME)
            .appendOptional(DateTimeFormatter.ISO_INSTANT)
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ssX"))
            .appendOptional(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"))
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetDateTime parseDateTimeString(String str) {
        return ZonedDateTime.from(Converter.DATE_TIME_FORMATTER.parse(str)).toOffsetDateTime();
    }

    private static final DateTimeFormatter TIME_FORMATTER = new DateTimeFormatterBuilder()
            .appendOptional(DateTimeFormatter.ISO_TIME)
            .appendOptional(DateTimeFormatter.ISO_OFFSET_TIME)
            .parseDefaulting(ChronoField.YEAR, 2020)
            .parseDefaulting(ChronoField.MONTH_OF_YEAR, 1)
            .parseDefaulting(ChronoField.DAY_OF_MONTH, 1)
            .toFormatter()
            .withZone(ZoneOffset.UTC);

    public static OffsetTime parseTimeString(String str) {
        return ZonedDateTime.from(Converter.TIME_FORMATTER.parse(str)).toOffsetDateTime().toOffsetTime();
    }
    // Serialize/deserialize helpers

    public static GravatarLookupData fromJsonString(String json) throws IOException {
        return getObjectReader().readValue(json);
    }

    public static String toJsonString(GravatarLookupData obj) throws JsonProcessingException {
        return getObjectWriter().writeValueAsString(obj);
    }

    private static ObjectReader reader;
    private static ObjectWriter writer;

    private static void instantiateMapper() {
        ObjectMapper mapper = new ObjectMapper();
        mapper.findAndRegisterModules();
        mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        mapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS, false);
        SimpleModule module = new SimpleModule();
        module.addDeserializer(OffsetDateTime.class, new JsonDeserializer<OffsetDateTime>() {
            @Override
            public OffsetDateTime deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
                String value = jsonParser.getText();
                return Converter.parseDateTimeString(value);
            }
        });
        mapper.registerModule(module);
        reader = mapper.readerFor(GravatarLookupData.class);
        writer = mapper.writerFor(GravatarLookupData.class);
    }

    private static ObjectReader getObjectReader() {
        if (reader == null) instantiateMapper();
        return reader;
    }

    private static ObjectWriter getObjectWriter() {
        if (writer == null) instantiateMapper();
        return writer;
    }
}

// GravatarLookupData.java

package com.apiverve.gravatarlookup.data;

import com.fasterxml.jackson.annotation.*;

public class GravatarLookupData {
    private String profileURL;
    private String thumbnailURL;
    private ContactInfo[] photos;
    private String displayName;
    private String aboutMe;
    private String currentLocation;
    private String company;
    private ContactInfo[] contactInfo;
    private Account[] accounts;
    private String username;

    @JsonProperty("profileUrl")
    public String getProfileURL() { return profileURL; }
    @JsonProperty("profileUrl")
    public void setProfileURL(String value) { this.profileURL = value; }

    @JsonProperty("thumbnailUrl")
    public String getThumbnailURL() { return thumbnailURL; }
    @JsonProperty("thumbnailUrl")
    public void setThumbnailURL(String value) { this.thumbnailURL = value; }

    @JsonProperty("photos")
    public ContactInfo[] getPhotos() { return photos; }
    @JsonProperty("photos")
    public void setPhotos(ContactInfo[] value) { this.photos = value; }

    @JsonProperty("displayName")
    public String getDisplayName() { return displayName; }
    @JsonProperty("displayName")
    public void setDisplayName(String value) { this.displayName = value; }

    @JsonProperty("aboutMe")
    public String getAboutMe() { return aboutMe; }
    @JsonProperty("aboutMe")
    public void setAboutMe(String value) { this.aboutMe = value; }

    @JsonProperty("currentLocation")
    public String getCurrentLocation() { return currentLocation; }
    @JsonProperty("currentLocation")
    public void setCurrentLocation(String value) { this.currentLocation = value; }

    @JsonProperty("company")
    public String getCompany() { return company; }
    @JsonProperty("company")
    public void setCompany(String value) { this.company = value; }

    @JsonProperty("contactInfo")
    public ContactInfo[] getContactInfo() { return contactInfo; }
    @JsonProperty("contactInfo")
    public void setContactInfo(ContactInfo[] value) { this.contactInfo = value; }

    @JsonProperty("accounts")
    public Account[] getAccounts() { return accounts; }
    @JsonProperty("accounts")
    public void setAccounts(Account[] value) { this.accounts = value; }

    @JsonProperty("username")
    public String getUsername() { return username; }
    @JsonProperty("username")
    public void setUsername(String value) { this.username = value; }
}

// Account.java

package com.apiverve.gravatarlookup.data;

import com.fasterxml.jackson.annotation.*;

public class Account {
    private String domain;
    private String display;
    private String url;
    private String iconURL;
    private boolean isHidden;
    private String username;
    private boolean verified;
    private String name;
    private String shortname;

    @JsonProperty("domain")
    public String getDomain() { return domain; }
    @JsonProperty("domain")
    public void setDomain(String value) { this.domain = value; }

    @JsonProperty("display")
    public String getDisplay() { return display; }
    @JsonProperty("display")
    public void setDisplay(String value) { this.display = value; }

    @JsonProperty("url")
    public String getURL() { return url; }
    @JsonProperty("url")
    public void setURL(String value) { this.url = value; }

    @JsonProperty("iconUrl")
    public String getIconURL() { return iconURL; }
    @JsonProperty("iconUrl")
    public void setIconURL(String value) { this.iconURL = value; }

    @JsonProperty("is_hidden")
    public boolean getIsHidden() { return isHidden; }
    @JsonProperty("is_hidden")
    public void setIsHidden(boolean value) { this.isHidden = value; }

    @JsonProperty("username")
    public String getUsername() { return username; }
    @JsonProperty("username")
    public void setUsername(String value) { this.username = value; }

    @JsonProperty("verified")
    public boolean getVerified() { return verified; }
    @JsonProperty("verified")
    public void setVerified(boolean value) { this.verified = value; }

    @JsonProperty("name")
    public String getName() { return name; }
    @JsonProperty("name")
    public void setName(String value) { this.name = value; }

    @JsonProperty("shortname")
    public String getShortname() { return shortname; }
    @JsonProperty("shortname")
    public void setShortname(String value) { this.shortname = value; }
}

// ContactInfo.java

package com.apiverve.gravatarlookup.data;

import com.fasterxml.jackson.annotation.*;

public class ContactInfo {
    private String type;
    private String value;

    @JsonProperty("type")
    public String getType() { return type; }
    @JsonProperty("type")
    public void setType(String value) { this.type = value; }

    @JsonProperty("value")
    public String getValue() { return value; }
    @JsonProperty("value")
    public void setValue(String value) { this.value = value; }
}