part of reseller_v1sandbox_api_client;

class CustomersResource_ extends Resource {

  CustomersResource_(Client client) : super(client) {
  }

  /**
   * Gets a customer resource if one exists and is owned by the reseller.
   *
   * [customerId] - Id of the Customer
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Customer> get(core.String customerId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Customer> insert(Customer request, {core.String customerAuthToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (customerAuthToken != null) queryParams["customerAuthToken"] = customerAuthToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Customer> patch(Customer request, core.String customerId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Customer> update(Customer request, core.String customerId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

class SubscriptionsResource_ extends Resource {

  SubscriptionsResource_(Client client) : super(client) {
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
  async.Future<Subscription> changePlan(ChangePlanRequest request, core.String customerId, core.String subscriptionId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changePlan";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscription> changeRenewalSettings(RenewalSettings request, core.String customerId, core.String subscriptionId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscription> changeSeats(Seats request, core.String customerId, core.String subscriptionId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/changeSeats";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<core.Map> delete(core.String customerId, core.String subscriptionId, core.String deletionType, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscription> get(core.String customerId, core.String subscriptionId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscription> insert(Subscription request, core.String customerId, {core.String customerAuthToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscriptions> list({core.String customerNamePrefix, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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
  async.Future<Subscription> startPaidService(core.String customerId, core.String subscriptionId, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "customers/{customerId}/subscriptions/{subscriptionId}/startPaidService";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
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

