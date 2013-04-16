part of reseller_v1sandbox_api_client;

/** JSON template for address of a customer. */
class Address {

  /** Address line 1 of the address. */
  core.String addressLine1;

  /** Address line 2 of the address. */
  core.String addressLine2;

  /** Address line 3 of the address. */
  core.String addressLine3;

  /** Name of the contact person. */
  core.String contactName;

  /** ISO 3166 country code. */
  core.String countryCode;

  /** Identifies the resource as a customer address. */
  core.String kind;

  /** Name of the locality. This is in accordance with - http://portablecontacts.net/draft-spec.html#address_element. */
  core.String locality;

  /** Name of the organization. */
  core.String organizationName;

  /** The postal code. This is in accordance with - http://portablecontacts.net/draft-spec.html#address_element. */
  core.String postalCode;

  /** Name of the region. This is in accordance with - http://portablecontacts.net/draft-spec.html#address_element. */
  core.String region;

  /** Create new Address from JSON data */
  Address.fromJson(core.Map json) {
    if (json.containsKey("addressLine1")) {
      addressLine1 = json["addressLine1"];
    }
    if (json.containsKey("addressLine2")) {
      addressLine2 = json["addressLine2"];
    }
    if (json.containsKey("addressLine3")) {
      addressLine3 = json["addressLine3"];
    }
    if (json.containsKey("contactName")) {
      contactName = json["contactName"];
    }
    if (json.containsKey("countryCode")) {
      countryCode = json["countryCode"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("locality")) {
      locality = json["locality"];
    }
    if (json.containsKey("organizationName")) {
      organizationName = json["organizationName"];
    }
    if (json.containsKey("postalCode")) {
      postalCode = json["postalCode"];
    }
    if (json.containsKey("region")) {
      region = json["region"];
    }
  }

  /** Create JSON Object for Address */
  core.Map toJson() {
    var output = new core.Map();

    if (addressLine1 != null) {
      output["addressLine1"] = addressLine1;
    }
    if (addressLine2 != null) {
      output["addressLine2"] = addressLine2;
    }
    if (addressLine3 != null) {
      output["addressLine3"] = addressLine3;
    }
    if (contactName != null) {
      output["contactName"] = contactName;
    }
    if (countryCode != null) {
      output["countryCode"] = countryCode;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (locality != null) {
      output["locality"] = locality;
    }
    if (organizationName != null) {
      output["organizationName"] = organizationName;
    }
    if (postalCode != null) {
      output["postalCode"] = postalCode;
    }
    if (region != null) {
      output["region"] = region;
    }

    return output;
  }

  /** Return String representation of Address */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for the ChangePlan rpc request. */
class ChangePlanRequest {

  /** Identifies the resource as a subscription change plan request. */
  core.String kind;

  /** Name of the plan to change to. */
  core.String planName;

  /** Purchase order id for your order tracking purposes. */
  core.String purchaseOrderId;

  /** Number/Limit of seats in the new plan. */
  Seats seats;

  /** Create new ChangePlanRequest from JSON data */
  ChangePlanRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("planName")) {
      planName = json["planName"];
    }
    if (json.containsKey("purchaseOrderId")) {
      purchaseOrderId = json["purchaseOrderId"];
    }
    if (json.containsKey("seats")) {
      seats = new Seats.fromJson(json["seats"]);
    }
  }

  /** Create JSON Object for ChangePlanRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (planName != null) {
      output["planName"] = planName;
    }
    if (purchaseOrderId != null) {
      output["purchaseOrderId"] = purchaseOrderId;
    }
    if (seats != null) {
      output["seats"] = seats.toJson();
    }

    return output;
  }

  /** Return String representation of ChangePlanRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a customer. */
class Customer {

  /** The alternate email of the customer. */
  core.String alternateEmail;

  /** The domain name of the customer. */
  core.String customerDomain;

  /** The id of the customer. */
  core.String customerId;

  /** Identifies the resource as a customer. */
  core.String kind;

  /** The phone number of the customer. */
  core.String phoneNumber;

  /** The postal address of the customer. */
  Address postalAddress;

  /** Create new Customer from JSON data */
  Customer.fromJson(core.Map json) {
    if (json.containsKey("alternateEmail")) {
      alternateEmail = json["alternateEmail"];
    }
    if (json.containsKey("customerDomain")) {
      customerDomain = json["customerDomain"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("phoneNumber")) {
      phoneNumber = json["phoneNumber"];
    }
    if (json.containsKey("postalAddress")) {
      postalAddress = new Address.fromJson(json["postalAddress"]);
    }
  }

  /** Create JSON Object for Customer */
  core.Map toJson() {
    var output = new core.Map();

    if (alternateEmail != null) {
      output["alternateEmail"] = alternateEmail;
    }
    if (customerDomain != null) {
      output["customerDomain"] = customerDomain;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (phoneNumber != null) {
      output["phoneNumber"] = phoneNumber;
    }
    if (postalAddress != null) {
      output["postalAddress"] = postalAddress.toJson();
    }

    return output;
  }

  /** Return String representation of Customer */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a subscription renewal settings. */
class RenewalSettings {

  /** Identifies the resource as a subscription renewal setting. */
  core.String kind;

  /** Subscription renewal type. */
  core.String renewalType;

  /** Create new RenewalSettings from JSON data */
  RenewalSettings.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("renewalType")) {
      renewalType = json["renewalType"];
    }
  }

  /** Create JSON Object for RenewalSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (renewalType != null) {
      output["renewalType"] = renewalType;
    }

    return output;
  }

  /** Return String representation of RenewalSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for subscription seats. */
class Seats {

  /** Identifies the resource as a subscription change plan request. */
  core.String kind;

  /** Maximum number of seats that can be purchased. This needs to be provided only for a non-commitment plan. For a commitment plan it is decided by the contract. */
  core.int maximumNumberOfSeats;

  /** Number of seats to purchase. This is applicable only for a commitment plan. */
  core.int numberOfSeats;

  /** Create new Seats from JSON data */
  Seats.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maximumNumberOfSeats")) {
      maximumNumberOfSeats = json["maximumNumberOfSeats"];
    }
    if (json.containsKey("numberOfSeats")) {
      numberOfSeats = json["numberOfSeats"];
    }
  }

  /** Create JSON Object for Seats */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (maximumNumberOfSeats != null) {
      output["maximumNumberOfSeats"] = maximumNumberOfSeats;
    }
    if (numberOfSeats != null) {
      output["numberOfSeats"] = numberOfSeats;
    }

    return output;
  }

  /** Return String representation of Seats */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a subscription. */
class Subscription {

  /** Creation time of this subscription in milliseconds since Unix epoch. */
  core.String creationTime;

  /** The id of the customer to whom the subscription belongs. */
  core.String customerId;

  /** Identifies the resource as a Subscription. */
  core.String kind;

  /** Plan details of the subscription */
  SubscriptionPlan plan;

  /** Purchase order id for your order tracking purposes. */
  core.String purchaseOrderId;

  /** Renewal settings of the subscription. */
  RenewalSettings renewalSettings;

  /** Number/Limit of seats in the new plan. */
  Seats seats;

  /** Name of the sku for which this subscription is purchased. */
  core.String skuId;

  /** The id of the subscription. */
  core.String subscriptionId;

  /** Trial Settings of the subscription. */
  SubscriptionTrialSettings trialSettings;

  /** Create new Subscription from JSON data */
  Subscription.fromJson(core.Map json) {
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("customerId")) {
      customerId = json["customerId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("plan")) {
      plan = new SubscriptionPlan.fromJson(json["plan"]);
    }
    if (json.containsKey("purchaseOrderId")) {
      purchaseOrderId = json["purchaseOrderId"];
    }
    if (json.containsKey("renewalSettings")) {
      renewalSettings = new RenewalSettings.fromJson(json["renewalSettings"]);
    }
    if (json.containsKey("seats")) {
      seats = new Seats.fromJson(json["seats"]);
    }
    if (json.containsKey("skuId")) {
      skuId = json["skuId"];
    }
    if (json.containsKey("subscriptionId")) {
      subscriptionId = json["subscriptionId"];
    }
    if (json.containsKey("trialSettings")) {
      trialSettings = new SubscriptionTrialSettings.fromJson(json["trialSettings"]);
    }
  }

  /** Create JSON Object for Subscription */
  core.Map toJson() {
    var output = new core.Map();

    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (customerId != null) {
      output["customerId"] = customerId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (plan != null) {
      output["plan"] = plan.toJson();
    }
    if (purchaseOrderId != null) {
      output["purchaseOrderId"] = purchaseOrderId;
    }
    if (renewalSettings != null) {
      output["renewalSettings"] = renewalSettings.toJson();
    }
    if (seats != null) {
      output["seats"] = seats.toJson();
    }
    if (skuId != null) {
      output["skuId"] = skuId;
    }
    if (subscriptionId != null) {
      output["subscriptionId"] = subscriptionId;
    }
    if (trialSettings != null) {
      output["trialSettings"] = trialSettings.toJson();
    }

    return output;
  }

  /** Return String representation of Subscription */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Plan details of the subscription */
class SubscriptionPlan {

  /** Interval of the commitment if it is a commitment plan. */
  SubscriptionPlanCommitmentInterval commitmentInterval;

  /** Whether the plan is a commitment plan or not. */
  core.bool isCommitmentPlan;

  /** The plan name of this subscription's plan. */
  core.String planName;

  /** Create new SubscriptionPlan from JSON data */
  SubscriptionPlan.fromJson(core.Map json) {
    if (json.containsKey("commitmentInterval")) {
      commitmentInterval = new SubscriptionPlanCommitmentInterval.fromJson(json["commitmentInterval"]);
    }
    if (json.containsKey("isCommitmentPlan")) {
      isCommitmentPlan = json["isCommitmentPlan"];
    }
    if (json.containsKey("planName")) {
      planName = json["planName"];
    }
  }

  /** Create JSON Object for SubscriptionPlan */
  core.Map toJson() {
    var output = new core.Map();

    if (commitmentInterval != null) {
      output["commitmentInterval"] = commitmentInterval.toJson();
    }
    if (isCommitmentPlan != null) {
      output["isCommitmentPlan"] = isCommitmentPlan;
    }
    if (planName != null) {
      output["planName"] = planName;
    }

    return output;
  }

  /** Return String representation of SubscriptionPlan */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Interval of the commitment if it is a commitment plan. */
class SubscriptionPlanCommitmentInterval {

  /** End time of the commitment interval in milliseconds since Unix epoch. */
  core.String endTime;

  /** Start time of the commitment interval in milliseconds since Unix epoch. */
  core.String startTime;

  /** Create new SubscriptionPlanCommitmentInterval from JSON data */
  SubscriptionPlanCommitmentInterval.fromJson(core.Map json) {
    if (json.containsKey("endTime")) {
      endTime = json["endTime"];
    }
    if (json.containsKey("startTime")) {
      startTime = json["startTime"];
    }
  }

  /** Create JSON Object for SubscriptionPlanCommitmentInterval */
  core.Map toJson() {
    var output = new core.Map();

    if (endTime != null) {
      output["endTime"] = endTime;
    }
    if (startTime != null) {
      output["startTime"] = startTime;
    }

    return output;
  }

  /** Return String representation of SubscriptionPlanCommitmentInterval */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Trial Settings of the subscription. */
class SubscriptionTrialSettings {

  /** Whether the subscription is in trial. */
  core.bool isInTrial;

  /** End time of the trial in milliseconds since Unix epoch. */
  core.String trialEndTime;

  /** Create new SubscriptionTrialSettings from JSON data */
  SubscriptionTrialSettings.fromJson(core.Map json) {
    if (json.containsKey("isInTrial")) {
      isInTrial = json["isInTrial"];
    }
    if (json.containsKey("trialEndTime")) {
      trialEndTime = json["trialEndTime"];
    }
  }

  /** Create JSON Object for SubscriptionTrialSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (isInTrial != null) {
      output["isInTrial"] = isInTrial;
    }
    if (trialEndTime != null) {
      output["trialEndTime"] = trialEndTime;
    }

    return output;
  }

  /** Return String representation of SubscriptionTrialSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for a subscription list. */
class Subscriptions {

  /** Identifies the resource as a collection of subscriptions. */
  core.String kind;

  /** The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results. */
  core.String nextPageToken;

  /** The subscriptions in this page of results. */
  core.List<Subscription> subscriptions;

  /** Create new Subscriptions from JSON data */
  Subscriptions.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("subscriptions")) {
      subscriptions = [];
      json["subscriptions"].forEach((item) {
        subscriptions.add(new Subscription.fromJson(item));
      });
    }
  }

  /** Create JSON Object for Subscriptions */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (subscriptions != null) {
      output["subscriptions"] = new core.List();
      subscriptions.forEach((item) {
        output["subscriptions"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of Subscriptions */
  core.String toString() => JSON.stringify(this.toJson());

}

