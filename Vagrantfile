Vagrant.configure("2") do |config|
     config.vm.define :sw20 do |sw20|
        sw20.vm.box = "svigneux/vyos-1.0.2-amd64"
        #sw20.vm.box = "svigneux/vyatta-core-6.6r1-amd64"
        sw20.vm.hostname = "sw20"
        sw20.vm.network "private_network", ip: "192.168.10.10", auto_config: false
        sw20.vm.network "private_network", ip: "192.168.20.254", auto_config: true
        #sw20.vm.provision :chef_solo do |chef|
            #chef.cookbooks_path = "./cookbooks"
            #chef.roles_path = "../my-recipes/roles"
            #chef.data_bags_path = "../my-recipes/data_bags"
            #chef.add_recipe "hoge"
            #chef.add_role "web"

            # You may also specify custom JSON attributes:
            #chef.json = { :mysql_password => "foo" }
        #end
    end

    config.vm.define :sw30 do |sw30|
        sw30.vm.box = "svigneux/vyos-1.0.2-amd64"
        #sw30.vm.box = "svigneux/vyatta-core-6.6r1-amd64"
        sw30.vm.hostname = "sw30"
        sw30.vm.network "private_network", ip: "192.168.10.20", auto_config: false
        sw30.vm.network "private_network", ip: "192.168.30.254", auto_config: true
        #sw30.vm.provision :chef_solo do |chef|
            #chef.cookbooks_path = "./cookbooks"
            #chef.roles_path = "../my-recipes/roles"
            #chef.data_bags_path = "../my-recipes/data_bags"
            #chef.add_recipe "hoge"
            #chef.add_role "web"

            # You may also specify custom JSON attributes:
            #chef.json = { :mysql_password => "foo" }
        #end
    end

    config.vm.define :web do |web|
        web.vm.box = "hashicorp/precise64"
        web.vm.hostname = "web-svr"
        web.vm.network "private_network", ip: "192.168.20.10", auto_config: true
        web.vm.provision :chef_solo do |chef|
            chef.cookbooks_path = "./cookbooks"
            #chef.roles_path = "../my-recipes/roles"
            #chef.data_bags_path = "../my-recipes/data_bags"
            chef.add_recipe "hello"
            chef.add_recipe "change-apt-server"
            chef.add_recipe "apache2"
            chef.add_recipe "apache2::mod_ssl"
            #chef.add_role "web"

            # You may also specify custom JSON attributes:
            #chef.json = { :mysql_password => "foo" }
        end
    end

    config.vm.define :db do |db|
        db.vm.box = "hashicorp/precise64"
        db.vm.hostname = "db-svr"
        db.vm.network "private_network", ip: "192.168.30.10", auto_config: true
        #db.vm.provision :chef_solo do |chef|
            #chef.cookbooks_path = "./cookbooks"
            #chef.roles_path = "../my-recipes/roles"
            #chef.data_bags_path = "../my-recipes/data_bags"
            #chef.add_recipe "hoge"
            #chef.add_role "web"

            # You may also specify custom JSON attributes:
            #chef.json = { :mysql_password => "foo" }
        #end
    end
end
