<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
 <body>
 <input type="text" name="name">
  <textarea >아아    </textarea>
    <ul>
      <li>
        <input type="radio" name="radioTxt" value="Apple" checked>Apple
      </li>
      <li>
        <input type="radio" name="radioTxt" value="Grape">Grape
      </li>
      <li>
        <input type="radio" name="radioTxt" value="Banana">Banana
      </li>
    </ul>
    <button type="button" name="button" id="radioButton">get radio Value</button>
    <button type="button" name="button" id="radioButton2">set radio Value</button>

    <script type="text/javascript">
      $(document).ready(function () {
        $('#radioButton').click(function () {
          // getter
          var radioVal = $('input[name="radioTxt"]:checked').val();
          alert(radioVal);
        });

        $('#radioButton2').click(function () {
          // setter
          // 선택한 부분을 세팅할 수 있다.
          $('input[name="radioTxt"]').val(['Banana']);
        });
      });
    </script>
  </body>
</html>