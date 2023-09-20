<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>DOC 4 YOU</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer">

<link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/style.css">
<script src="./main.js"></script>
</head>

<body>




	<jsp:include page="header.jsp"></jsp:include>



	

	<section class="home" id="home">

		<div class="image">
			<img src="./assets/img/Doctors-bro.svg" alt="">
		</div>

		<div class="content">
			<h3>Stay Safe, Stay Healthy</h3>
			<p>
				<b>A Doc 4 you That You can have complete faith</b>
			</p>

		</div>

	</section>

	<section class="icons-container">

		<div class="icons">
			<i class="fas fa-user-md"></i>
			<h3>140+</h3>
			<p>Doctors at work</p>
		</div>

		<div class="icons">
			<i class="fas fa-users"></i>
			<h3>1040+</h3>
			<p>Satisfied patients</p>
		</div>

		<div class="icons">
			<i class="fas fa-hospital"></i>
			<h3>80+</h3>
			<p>Available hospitals</p>
		</div>

	</section>

	<!-- services section starts  -->

	<section class="services" id="services">

		<h1 class="heading">
			our <span>services</span>
		</h1>

		<div class="box-container">

			<div class="box">
				<i class="fas fa-notes-medical"></i> <i class="fas fa-user-plus"
					style="font-size: 36px"></i>
				<h3>Free Checkups</h3>
				<p>Regular medical checkups allow doctors to detect disease
					symptoms that patients may be unaware of. The doctor can detect
					potentially serious or life-threatening conditions and avoid risks
					with routine screenings before it is too late or the situation
					worsens.</p>
			</div>

			<div class="box">
				<i class="fas fa-ambulance"></i>
				<h3>24/7 Ambulance</h3>
				<p>A supermarket, convenience store, ATM, automated online
					assistant, filling station, restaurant, concierges, or a staffed
					datacenter may offer 24-hour service, as may a staffing company
					specializing in providing nurses, as nurses frequently cover shifts
					at hospitals that are open 24 hours a day, seven days a week.</p>
			</div>

			<div class="box">
				<i class="fas fa-user-md"></i>
				<h3>Expert Doctors</h3>
				<p>A doctor who has received advanced training and knowledge in
					a particular field of medicine: The doctors are specialists in all
					fields. They are hardworking, conscientious, and professional
					doctor who always prioritises the needs of my patients in
					everything they do.</p>
			</div>

			<div class="box">
				<i class="fas fa-pills"></i>

				<h3>Medicines</h3>
				<p>Medicines can help you recover from illnesses and improve
					your overall health. The majority of people will require medication
					at some point in their lives. You may need to take medication on a
					daily basis or only on occasion.</p>
			</div>

			<div class="box">
				<i class="fas fa-procedures"></i>
				<h3>Bed Facility</h3>
				<p>A hospital bed, also known as a hospital cot, is a bed that
					is designed specifically for hospitalised patients or others who
					require medical attention. These beds are designed with special
					features for the comfort and well-being of patients as well as the
					convenience of health care workers.</p>
			</div>

			<div class="box">
				<i class="fas fa-heartbeat"></i>
				<h3>Total Care</h3>
				<p>Total patient care is a nursing model in which one nurse
					cares for a single patient or a group of patients throughout his or
					her shift. The nurse attends to all of the patient's needs during
					that shift, and in some cases, the nurse provides care until the
					patient's medical needs are met. All patient information will be
					accessible to the nurse.</p>
			</div>

		</div>

	</section>

	<!-- services section ends  -->

	<!-- footer section starts -->

	<section class="footer">
		<jsp:include page="footer.jsp"></jsp:include>

	</section>
	<!-- footer section ends -->


	
	<script src="<%= request.getContextPath() %>/assets/js/script.js"></script>
</body>

</html>