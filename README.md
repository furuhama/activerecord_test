## ActiveRecord Test

Sandbox for running ActiveRecord tests

### setup

```
$ DOCKER_BUILDKIT=1 docker build . -t activerecord
$ docker-compose up -d activerecord
```

### Run tests

On host machine

```
$ docker-compose run activerecord bash
```

Now, you are on container bash process and you should setup DB for test at first.

```
$ ./setup_db.sh
```

Finally, you can run any commands you want!

To run test for example, try to run below.

```
$ bundle exec ruby -w -Itest -Ilib -I../activesupport/lib -I../activemodel/lib <target_file_path>
```

### Console

```
$ bundle exec ruby -w -Itest -Ilib -I../activesupport/lib -I../activemodel/lib console.rb
```
