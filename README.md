# CRUD - Post

* ## Model
  * Post 모델
  ``` ruby
  rails g model Post
  ```

* ## View
  * `new.html.erb` : 새로 post 작성하기 (`<form>`) : C
  * `index.html.erb` : 전체 post 보기 : R
  * `show.html.erb` : 1개 post 보기 : R
  * `update.html.erb` : 기존 post 수정하기 (`<form>`) : U
    * `patch`

* ## Controller 
  * ### Post controller
    ``` ruby
    rails g controller posts
    ```
    * #### Create
      * `new` : post를 새로 작성하는 view 용 액션
      * `create` : 실제로 DB 에 저장하는 액션
    * #### Read
      * `index` : 전체를 post 를 보여주는 view 용 액션
      * `show` : 특정 post 를 보여주는 view 용 액션
    * #### Update
      * `edit` : 특정 post 를 수정하기 위한 view 용 액션
      * `update` : 수정된 내용을 실제로 DB 에 저장하는 액션
    * #### Delete/Destroy
      * `destroy` : 특정 post 를 삭제하는 액션
      
* ### Route
  * `GET` :
    *  `get` 게시글들
      : /posts
    * `get` 게시글을 새로 쓰겠다.
      : /posts/new
    * `get` 게시글들 중 특정한 것
      : /posts/:post_id
    * `get` 게시글들 중 특정한 것을 수정하겠다.
      : /posts/:post_id/edit
  * `POST` : 
    * `POST` 게시글들
      : /posts
  * `PATCH` 
    *  `Patch` 게시글들 중 특정한 것
      : /posts/:post_id
  * `DELETE` : 삭제한다.
    * `Delete` 게시글들 중 특정한 것 
      : /posts/:post_id



* #### 번외
  * validates
    * 사용자를 믿지 말자.
  * seed
    * Faker를 통하여 쉬운 dummy data 만들기
  * kaminari
    * gem을 쓰면 기능 구현이 쉬워진다!