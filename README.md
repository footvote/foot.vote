# Foot.vote – Vote with your feet!

[![Netlify Status](https://api.netlify.com/api/v1/badges/0ab46ae3-8861-45d1-8ab6-dbfd8574c807/deploy-status)](https://app.netlify.com/sites/footvote/deploys)

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
