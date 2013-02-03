part of reseller_v1sandbox_api_client;

class CustomersResource extends Resource {

  CustomersResource(Client client) : super(client) {
  }

  /**
   * Gets a customer resource if one exists and is owned by the reseller.
   *
   * [customerId] - Id of the Customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Customer> get(String customerId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Customer.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a customer resource if one does not already exist.
   *
   * [request] - Customer to send in this request
   *
   * [customerAuthToken] - An auth token needed for inserting a customer for which domain already exists. Can be generated at https://www.google.com/a/cpanel//TransferToken. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Customer> insert(Customer request, {String customerAuthToken, Map optParams}) {
    var completer = new Completer();
    var url = "customers";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerAuthToken != null) queryParams["customerAuthToken"] = customerAuthToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Customer.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update a customer resource if one it exists and is owned by the reseller. This method supports patch semantics.
   *
   * [request] - Customer to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Customer> patch(Customer request, String customerId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Customer.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Update a customer resource if one it exists and is owned by the reseller.
   *
   * [request] - Customer to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Customer> update(Customer request, String customerId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Customer.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SubscriptionsResource extends Resource {

  SubscriptionsResource(Client client) : super(client) {
  }

  /**
   * Changes the plan of a subscription
   *
   * [request] - ChangePlanRequest to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> changePlan(ChangePlanRequest request, String customerId, String subscriptionId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changePlan";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Changes the renewal settings of a subscription
   *
   * [request] - RenewalSettings to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> changeRenewalSettings(RenewalSettings request, String customerId, String subscriptionId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Changes the seats configuration of a subscription
   *
   * [request] - Seats to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> changeSeats(Seats request, String customerId, String subscriptionId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changeSeats";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Cancels/Downgrades a subscription.
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [deletionType] - Whether the subscription is to be fully cancelled or downgraded
   *   Allowed values:
   *     cancel - Cancels the subscription immediately
   *     downgrade - Downgrades a Google Apps for Business subscription to Google Apps
   *     suspend - Suspends the subscriptions for 4 days before cancelling it
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> delete(String customerId, String subscriptionId, String deletionType, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (deletionType == null) paramErrors.add("deletionType is required");
    if (deletionType != null && !["cancel", "downgrade", "suspend"].contains(deletionType)) {
      paramErrors.add("Allowed values for deletionType: cancel, downgrade, suspend");
    }
    if (deletionType != null) queryParams["deletionType"] = deletionType;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Gets a subscription of the customer.
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> get(String customerId, String subscriptionId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates/Transfers a subscription for the customer.
   *
   * [request] - Subscription to send in this request
   *
   * [customerId] - Id of the Customer
   *
   * [customerAuthToken] - An auth token needed for transferring a subscription. Can be generated at https://www.google.com/a/cpanel/customer-domain/TransferToken. Optional.
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> insert(Subscription request, String customerId, {String customerAuthToken, Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerAuthToken != null) queryParams["customerAuthToken"] = customerAuthToken;
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Lists subscriptions of a reseller, optionally filtered by a customer name prefix.
   *
   * [customerNamePrefix] - Prefix of the customer's domain name by which the subscriptions should be filtered. Optional
   *
   * [maxResults] - Maximum number of results to return
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - Token to specify next page in the list
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscriptions> list({String customerNamePrefix, int maxResults, String pageToken, Map optParams}) {
    var completer = new Completer();
    var url = "subscriptions";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerNamePrefix != null) queryParams["customerNamePrefix"] = customerNamePrefix;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscriptions.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Starts paid service of a trial subscription
   *
   * [customerId] - Id of the Customer
   *
   * [subscriptionId] - Id of the subscription, which is unique for a customer
   *
   * [optParams] - Additional query parameters
   */
  Future<Subscription> startPaidService(String customerId, String subscriptionId, {Map optParams}) {
    var completer = new Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/startPaidService";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (customerId == null) paramErrors.add("customerId is required");
    if (customerId != null) urlParams["customerId"] = customerId;
    if (subscriptionId == null) paramErrors.add("subscriptionId is required");
    if (subscriptionId != null) urlParams["subscriptionId"] = subscriptionId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

