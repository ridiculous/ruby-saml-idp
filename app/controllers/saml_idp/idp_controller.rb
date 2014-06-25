# encoding: utf-8
module SamlIdp
  class IdpController < ActionController::Base
    include SamlIdp::Controller

    protect_from_forgery

    before_filter :validate_saml_request

    def create
      @saml_response = idp_make_saml_response
    end

    protected

    def idp_make_saml_response
      raise "Not implemented"
    end

  end
end
