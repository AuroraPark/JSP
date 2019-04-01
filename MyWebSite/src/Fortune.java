
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Fortune
 */
@WebServlet("/Fortune")
public class Fortune extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	static String[] starText = new String[12]; // 운세
	static String[] text2 = new String[6]; 
	//{ "Good", "So Good", "Sad", "Happy", "Lonely", "Awsome" };
	// 따로 별자리 별로 저장한다.
	
	// 운세를 랜덤으로 뽑아온다.
//	for (int i = 0; i < starText.length; i++) {
//		starText[i] = text2[(int) (Math.random() * 6)];
//	}
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Fortune() {
		super();
		// TODO Auto-generated constructor stub
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());

//		별자리 소스!
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		int month = 0;
		int day = 0;
		String spl = birth.substring(4, 8);
		int date = Integer.parseInt(spl);

		month = date / 100;
		;
		day = date % 100;

		String starStr = ""; // 별자리
		

		switch (month) {
		case 1:
			if (day >= 20) {
				starStr = "Aquarius";
			} else {
				starStr = "Capricorn";
			}
			break;
		case 2:
			if (day >= 19) {
				starStr = "Pisces";
			} else {
				starStr = "Aquarius";
			}
			break;
		case 3:
			if (day >= 21) {
				starStr = "Aries";
			} else {
				starStr = "Pisces";
			}
			break;
		case 4:
			if (day >= 20) {
				starStr = "Taurus";
			} else {
				starStr = "Aries";
			}
			break;
		case 5:
			if (day >= 21) {
				starStr = "Gemini";
			} else {
				starStr = "Taurus";
			}
			break;
		case 6:
			if (day >= 22) {
				starStr = "Cancer";
			} else {
				starStr = "Gemini";
			}
			break;
		case 7:
			if (day >= 23) {
				starStr = "Leo";
			} else {
				starStr = "Cancer";
			}
			break;
		case 8:
			if (day >= 23) {
				starStr = "Virgo";
			} else {
				starStr = "Leo";
			}
			break;
		case 9:
			if (day >= 24) {
				starStr = "Libra";
			} else {
				starStr = "Virgo";
			}
			break;
		case 10:
			if (day >= 23) {
				starStr = "Scorpio";
			} else {
				starStr = "Libra";
			}
			break;
		case 11:
			if (day >= 23) {
				starStr = "Sagittarius";
			} else {
				starStr = "Scorpio";
			}
			break;
		case 12:
			if (day >= 25) {
				starStr = "Capricorn";
			} else {
				starStr = "Sagittarius";
			}
			break;
		}

		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head");
		out.println("</head");
		out.println("<body>");
		out.println("<h1> Hello, " + name + ".</h1>");
		out.println("<h2>Your birth is " + birth + ".</h2>");
		out.println("<h2>Your birthmonth is " + month + ".</h2>");
		out.println("<h2>Your birthday is " + day + ".</h2>");

		out.println("<h1>So....</h1>");
		out.println("<h1>Your Sign is " + starStr + ".</h1>");
		out.println("<h2>Today " + starStr + "'s fortune is.</h2>");
		out.println("<h1>" + starText[0] + "</h1>");
		out.println("</body>");
		out.println("</html>");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
