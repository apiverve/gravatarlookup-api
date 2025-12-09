declare module '@apiverve/gravatarlookup' {
  export interface gravatarlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface gravatarlookupResponse {
    status: string;
    error: string | null;
    data: GravatarLookupData;
    code?: number;
  }


  interface GravatarLookupData {
      profileURL:      string;
      thumbnailURL:    string;
      photos:          ContactInfo[];
      displayName:     string;
      aboutMe:         string;
      currentLocation: string;
      company:         string;
      contactInfo:     ContactInfo[];
      accounts:        Account[];
      username:        string;
  }
  
  interface Account {
      domain:    string;
      display:   string;
      url:       string;
      iconURL:   string;
      isHidden:  boolean;
      username:  string;
      verified:  boolean;
      name:      string;
      shortname: string;
  }
  
  interface ContactInfo {
      type:  string;
      value: string;
  }

  export default class gravatarlookupWrapper {
    constructor(options: gravatarlookupOptions);

    execute(callback: (error: any, data: gravatarlookupResponse | null) => void): Promise<gravatarlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: gravatarlookupResponse | null) => void): Promise<gravatarlookupResponse>;
    execute(query?: Record<string, any>): Promise<gravatarlookupResponse>;
  }
}
