$(document).ready(function(){
    app = {
        show: function(){
            $("tbody").load('info_set.php', {type: 'view'}, function(response){
                $("tbody").html(response);
            })		
        }
    }
    app.show()
})

function tambah(){
    // var data = $('.form-admin').serialize();
    var formData = new FormData($( "#infotambah" )[0]);
    $.ajax({
        type: 'POST',
        url: "info_set.php?type=tambah",
        data: formData,
        async: false,  
        cache: false,  
        contentType: false,  
        processData: false,
        success: function() {
            $("tbody").load('info_set.php', {type: 'view'}, function(response){
                $("tbody").html(response);
            })	
        }
    });
}

function form_edit(id){
    app = {
        show: function(){  
            $("#form").load('info_set.php', {info_id: id}, function(response){
                $("#form").html(response);
            })		
        }
    }
    app.show()
}

function edit(){
    var formDat = new FormData($( "#infoedit" )[0]);
    $.ajax({
        type: 'POST',
        url: "info_set.php?type=edit",
        data: formDat,
        async: false,  
        cache: false,  
        contentType: false,  
        processData: false,
        success: function() {
            $("tbody").load('info_set.php', {type: 'view'}, function(response){
                $("tbody").html(response);
            })	
        },
        error: function(){
            alert("error");
        }
    });
    
}

function form_delete(id){
    if(confirm("Yakin Akan Hapus Data ?")){
        $.ajax({
            type: 'GET',
            url: "info_set.php?hapus="+id,
            data: id,
            success: function() {
                $("tbody").load('info_set.php', {type: 'view'}, function(response){
                    $("tbody").html(response);
                })	
            }
        });
    }
}
