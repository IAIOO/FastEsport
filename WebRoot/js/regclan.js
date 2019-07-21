function ChooseClanType(sval) 
{ 
	var IMG_BELONG=["","职业证明","学生证","营业执照","身份证"];
	switch(Number(sval))
	{
		case 1:
	      $("#rProTeam").css("display", "block");
		  $("#rSchoolTeam").css("display", "none");
		  $("#rCafeTeam").css("display", "none");
		  $("#rFreeTeam").css("display", "none");
		  $("#imgname").html(IMG_BELONG[1]);
			break;
		case 2:
	      $("#rProTeam").css("display", "none");
		  $("#rSchoolTeam").css("display", "block");
		  $("#rCafeTeam").css("display", "none");
		  $("#rFreeTeam").css("display", "none");
		  $("#imgname").html(IMG_BELONG[2]);
		    break;
		case 3:
	      $("#rProTeam").css("display", "none");
		  $("#rSchoolTeam").css("display", "none");
		  $("#rCafeTeam").css("display", "block");
		  $("#rFreeTeam").css("display", "none");
		  $("#imgname").html(IMG_BELONG[3]);
			break;	
		case 4:
	      $("#rProTeam").css("display", "none");
		  $("#rSchoolTeam").css("display", "none");
		  $("#rCafeTeam").css("display", "none");
		  $("#rFreeTeam").css("display", "block");
		  $("#imgname").html(IMG_BELONG[4]);
			break;	
	}
}