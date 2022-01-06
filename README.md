# Foot.vote – Vote with your feet!

## Docker run
```
docker-compose build
docker-compose run backend bundle exec rails db:create
docker-compose up
```

## Dev SSL certificate via https://github.com/FiloSottile/mkcert
```
mkcert -install
cd nginx/development/
mkcert "*.footvote.xyz" footvote.xyz
```


* Deployment instructions
- Ansible
  - production
    `$ config/ansible`
    `$ ansible-playbook site.yml ansible.cfg -i environments/production/hosts`
– Puma with Systemd

```
cap production puma:systemd:config puma:systemd:enable
```
