/**
 * 登入表单验证
 * @type {jQuery|*}
 */
var validator = $("#loginForm").validate({
    rules: {
        username: {
            required: true,
            minlength: 2,
            maxlength: 17
        },
        password: {
            required: true,
            minlength: 6,
            maxlength: 25
        }
    },
    messages: {
        username: {
            required: "请输入用户名",
            minlength: "用户名必需由 2 个字母组成",
            maxlength: "用户名最长不得超过 17 个字母"
        },
        password: {
            required: "请输入密码",
            minlength: "密码长度不能小于 6 个字母",
            maxlength: "密码长度不能小于 25 个字母"
        }
    }

});

function loginSuccess() {
    var obj = $("#loginMessage")
    obj.removeClass("hidden")
    obj.removeClass("alert-warning")
    obj.addClass("alert-success")

}