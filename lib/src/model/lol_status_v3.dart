class Status {
	String name;
	String regionTag;
	String hostname;
	List<Services> services;
	String slug;
	List<String> locales;

	Status({this.name, this.regionTag, this.hostname, this.services, this.slug, this.locales});

	Status.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		regionTag = json['region_tag'];
		hostname = json['hostname'];
		if (json['services'] != null) {
			services = new List<Services>();
			json['services'].forEach((v) { services.add(new Services.fromJson(v)); });
		}
		slug = json['slug'];
		locales = json['locales'].cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['region_tag'] = this.regionTag;
		data['hostname'] = this.hostname;
		if (this.services != null) {
      data['services'] = this.services.map((v) => v.toJson()).toList();
    }
		data['slug'] = this.slug;
		data['locales'] = this.locales;
		return data;
	}
}

class Services {
	String status;
	List<Incidents> incidents;
	String name;
	String slug;

	Services({this.status, this.incidents, this.name, this.slug});

	Services.fromJson(Map<String, dynamic> json) {
		status = json['status'];
		if (json['incidents'] != null) {
			incidents = new List<Incidents>();
			json['incidents'].forEach((v) { incidents.add(new Incidents.fromJson(v)); });
		}
		name = json['name'];
		slug = json['slug'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['status'] = this.status;
		if (this.incidents != null) {
      data['incidents'] = this.incidents.map((v) => v.toJson()).toList();
    }
		data['name'] = this.name;
		data['slug'] = this.slug;
		return data;
	}
}

class Incidents {
	bool active;
	String createdAt;
	int id;
	List<Updates> updates;

	Incidents({this.active, this.createdAt, this.id, this.updates});

	Incidents.fromJson(Map<String, dynamic> json) {
		active = json['active'];
		createdAt = json['created_at'];
		id = json['id'];
		if (json['updates'] != null) {
			updates = new List<Updates>();
			json['updates'].forEach((v) { updates.add(new Updates.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['active'] = this.active;
		data['created_at'] = this.createdAt;
		data['id'] = this.id;
		if (this.updates != null) {
      data['updates'] = this.updates.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Updates {
	String severity;
	String author;
	String createdAt;
	List<Translations> translations;
	String updatedAt;
	String content;
	String id;

	Updates({this.severity, this.author, this.createdAt, this.translations, this.updatedAt, this.content, this.id});

	Updates.fromJson(Map<String, dynamic> json) {
		severity = json['severity'];
		author = json['author'];
		createdAt = json['created_at'];
		if (json['translations'] != null) {
			translations = new List<Translations>();
			json['translations'].forEach((v) { translations.add(new Translations.fromJson(v)); });
		}
		updatedAt = json['updated_at'];
		content = json['content'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['severity'] = this.severity;
		data['author'] = this.author;
		data['created_at'] = this.createdAt;
		if (this.translations != null) {
      data['translations'] = this.translations.map((v) => v.toJson()).toList();
    }
		data['updated_at'] = this.updatedAt;
		data['content'] = this.content;
		data['id'] = this.id;
		return data;
	}
}

class Translations {
	Translations();

	Translations.fromJson(Map<String, dynamic> json) {
    print('Got translations: $json');
  }

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}