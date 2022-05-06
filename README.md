# Models

$ rails new authentication-codes -d postgresql

$ bundle

$ gem 'annotate' 

$ rails g model photo title:string image_url:string

$ rails db:create db:migrate

Test model Photo

```rb
require "test_helper"

class PhotoTest < ActiveSupport::TestCase

  test 'should have a title value' do
    photo = Photo.new(image_url: 'algo.jpg')
    assert_not photo.save
  end

  test "should have an image_url value" do
    photo = Photo.new(title: 'algo.jpg')
    assert_not photo.save
  end

  test 'should not save non valid image urls' do
    photo = Photo.new(title: 'algo', image_url: 'algo')
    assert_not photo.save
  end

  test 'should save valid image urls' do
    photo = Photo.new(image_url: 'algo.jpg', title: 'algo')
    assert photo.save
  end
end
```

Run test:

```shell
$ rails test test/models/photo_test.rb
```

Results:

```shell
Running 4 tests in a single process (parallelization threshold is 50)
Run options: --seed 27551

# Running:

....

Finished in 0.051176s, 78.1616 runs/s, 78.1616 assertions/s.
4 runs, 4 assertions, 0 failures, 0 errors, 0 skips
```

`gem ‘annotate’`

`$ bundle exec annotate —models`

Cada vez que generemos una migración anótate generará la anotación del schema de cada modelo.
$ rails g annotate:install


Filter for resources:

$ rails routes -c photos


