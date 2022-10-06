$("#fileupload").on('change', function (e) {
    var size = $("#fileupload")[0].files[0].size
    var file = $("#fileupload")[0].files[0]
    console.log(size)
    var name=e.target.value;
    console.log(name);
    var fileName = name.substring(name.lastIndexOf(".")+1).toLowerCase();
    console.log(fileName);
    if(fileName !="jpg" && fileName !="jpeg" && fileName !="png" && fileName !="gif" ){
        alert("请选择图片格式文件上传(jpg,png,gif等)！");
        e.target.value="";
        return
    }else if (size > 1024*1024){
        alert("图片大小不能超过1M")
        e.target.value=""
        return
    }else {
        var reader = new FileReader()
        reader.onload = function(e){
            $(".imgBox img").attr('src',e.target.result)
            $(".imgBox img").css({'height':'150px','width':'130px','margin':'0'})
            $(".imgBox p").remove()
            
        }
        reader.readAsDataURL(file)
    }
})
function changeForm(var1){
    $(".forms form").addClass("hidden")
    $("#"+var1).removeClass("hidden")
}

$.validator.addMethod("isPhone", function(value,element) {
    var length = value.length;
    var mobile = /^1[3456789]\d{9}$/;
    return this.optional(element) || (length == 11 && mobile.test(value));
}, "请正确填写您的联系电话");
var validator = $("#infoForm").validate({
    rules: {
        username: {
            isUserName: true,
            required: true,
            minlength: 2,
            maxlength: 16
        },
        phone:{
            required: true,
            minlength:11,
            maxlength:11,
            isPhone: true
        },
        email: {
            required: true,
            email: true
        }
    },
    messages: {
        username: {
            required: "请输入用户名",
            isUserName: "请输入以字母开头的字母数字，可包含'_'符号",
            minlength: "用户名必需由 2 个字母组成",
            maxlength: "用户名最长不得超过 16 个字符"
        },
        email: "请输入一个正确的邮箱",
        phone: "请输入一个正确的手机号"
    }
});
var validator = $("#pwdForm").validate({
    rules: {
        newpwd: {
            required: true,
            minlength: 6,
            maxlength: 25
        },
        confirmpwd: {
            required: true,
            minlength: 6,
            maxlength: 25,
            equalTo: "#newpwd"
        }
    },
    messages: {
        newpwd: {
            required: "请输入密码",
            minlength: "密码长度不能小于 6 个字母",
            maxlength: "密码长度不能小于 25 个字母"
        },
        confirmpwd: {
            required: "请输入密码",
            minlength: "密码长度不能小于 6 个字母",
            maxlength: "密码长度不能大于 25 个字母",
            equalTo: "两次密码输入不一致"
        }
    }
});