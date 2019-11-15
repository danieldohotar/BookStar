[#ftl]
[#import "/spring.ftl" as spring /]
<html lang="en">
<head>
[#include '/nav_bar.ftl']
</head>
<body>



<div class="container">
    <!-- Default panel contents -->
    <div class="panel-heading">Messages from contact:
    </div>

<table>
    <tr>
        <th style="min-width:150px">name</th>
        <th style="min-width:150px">email</th>
        <th style="min-width:150px">subject</th>
        <th style="min-width:150px">message</th>

        <th style="min-width:150px"></th>

    </tr>

    [#list contact as contact]
    <tr>
        <td style="min-width:150px">${contact.name}</td>
        <td style="min-width:150px">${contact.email}</td>
        <td style="min-width:150px">${contact.subject}</td>
        <td style="min-width:150px">${contact.message}</td>

        <td >

            <a href="/contact/delete?id=${contact.id?c}">Delete</a>
        </td>
    </tr>
    [/#list]
</table>

 </div>
</div>
</div>


</form>
</body>
</html>
