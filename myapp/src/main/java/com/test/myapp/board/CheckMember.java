package com.test.myapp.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckMember {

	public void check(HttpServletRequest req, HttpServletResponse resp) {

		try {

			HttpSession session = req.getSession();

			if (session.getAttribute("id") == null || session.getAttribute("id").toString().equals("")) {

				resp.setCharacterEncoding("UTF-8");
				PrintWriter writer = resp.getWriter();
				writer.print("<html>");
				writer.print("<body>");
				writer.print("<meta charset='utf-8'>");
				writer.print("<script>");
				writer.print("alert('로그인 후 사용이 가능합니다');");
				writer.print("location.href='/myapp/index.do'");

				writer.print("</script>");
				writer.print("</body>");
				writer.print("</html>");

				writer.close();

			}

		} catch (

		Exception e) {
			e.getStackTrace();
		}
	}

}