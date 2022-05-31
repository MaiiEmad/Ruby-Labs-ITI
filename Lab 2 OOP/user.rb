require "./person.rb"
require "./contactable.rb"
class User < Person
    # include => can use function with object that form from class
    extend Contactable
    attr_accessor :email , :mobile
    @email
    @mobile
    def initialize(name,email,mobile)
        super(name)
        @email=email
        @mobile=mobile
    end

    #save user in file
    def create
        if File.read('user.txt').include?(mobile)
            puts "Mobile Phone is already exist"
        else
            #  f = file.open (user.txt , a)
            File.open('user.txt','a') do |f|
                f.puts "#{name}: #{email} | #{mobile}"
            end
        end
    end

    # valid email
    def self.valid_email(email)
        if email.match(/^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$/)
            return true
        else
            return false
        end
    end

    #valid phone
    def self.valid_mobile(mobile)
        # egyption phone number regex "^01[0125][0-9]{8}$"
        if mobile.match(/^0[0-9]{10}$/)
            return true
        else
            return false
        end
    end

    # function to show details of users
    def self.list(*args)
        case args.count
            # user enter list ->gets.chomps=>string  2\12
        when 0
            contact_details("*")
        when 1
            if args[0]== "*"
                contact_details("*")
            else
                contact_details(args[0]) 
            end
        else
            raise "wrong number of arguments" 
        end
    end

end

new_user= User.new('maii','m@gmail.com','0109045961');
new_user.create

User.list(0)

#  used  2 methods overload