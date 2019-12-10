class UserMailer < Devise::Mailer
    helper :application # gives access to all helper within application_helper
    #include Devise::Controllers::UrlHelpers # optional, e.g 'confirmatin_url'
    default template_path: 'users/mailer' # to make sure that the mailer uses devise views

    def new_registration(record,  opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "partuma.lodge@gmail.com"
        opts[:reply_to]          = "partuma.lodge@gmail.com"
    end

    def confirmation_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "partuma.lodge@gmail.com"
        opts[:reply_to]          = "partuma.lodge@gmail.com"
        super
    end

    def reset_password_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "partuma.lodge@gmail.com"
        opts[:reply_to]          = "partuma.lodge@gmail.com"
        super
    end

    def unlock_instructions(record, token, opts={})
        headers["Custom-header"] = "Bar"
        opts[:from]              = "partuma.lodge@gmail.com"
        opts[:reply_to]          = "partuma.lodge@gmail.com"
        super
    end
end
