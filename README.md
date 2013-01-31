igolang
=======
一个基于Go+MySQL的社区系统

=======
/ 系统首页

/category/100 列表页，按照分类id（100）罗列
/category/add 添加分类，需要管理员权限
/category/delete/100 删除分类，需要管理员权限
/category/update/100 更新分类，需要管理员权限

/article/add 添加文章，需要注册用户权限
/article/delete/200 删除文章，用户只能删除自己的文章
/article/view/200 文章展示
/article/update/200 更新文章，文章所有者权限

/comment/200 评论id为200的文章，需要已登录用户权限
/comment/delete/300 删除评论，评论所有者权限或者是管理员权限
/comment/update/300 更新评论

/link/list 友情链接
/link/add 添加链接
/link/update/400 更新链接
/link/delete/400 删除链接

/user/register 用户注册
/user/login 用户登录
/user/logout 用户退出
/user/forget_password 忘记密码
/user/change_passwrod 修改密码

/config 系统配置，需要管理员权限
