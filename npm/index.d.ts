declare module '@apiverve/gravatarlookup' {
  export interface gravatarlookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface gravatarlookupResponse {
    status: string;
    error: string | null;
    data: GravatarLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface GravatarLookupData {
      profileURL:           null | string;
      thumbnailURL:         null | string;
      photos:               ContactInfo[];
      displayName:          null | string;
      aboutMe:              null | string;
      currentLocation:      null | string;
      company:              null | string;
      contactInfo:          ContactInfo[];
      accounts:             Account[];
      username:             null | string;
      accountCount:         number | null;
      verifiedAccountCount: number | null;
  }
  
  interface Account {
      domain:   null | string;
      display:  null | string;
      url:      null | string;
      verified: boolean | null;
      name:     null | string;
  }
  
  interface ContactInfo {
      type:  null | string;
      value: null | string;
  }

  export default class gravatarlookupWrapper {
    constructor(options: gravatarlookupOptions);

    execute(callback: (error: any, data: gravatarlookupResponse | null) => void): Promise<gravatarlookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: gravatarlookupResponse | null) => void): Promise<gravatarlookupResponse>;
    execute(query?: Record<string, any>): Promise<gravatarlookupResponse>;
  }
}
