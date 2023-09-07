<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC 4 YOU</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../assets/css/style.css">

</head>

<body>

    <!-- header section starts  -->

    <header class="header" id="header">

    </header>

    <div class="profile__content">
        <div class="content__section">
            <div class="section__row">
                <div class="section__row__column">

                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text has-value">
                        <input id="name" name="name" type="text">
                        <label for="name">
                            Name<span>*</span>
                        </label>

                    </div>
                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text has-value">
                        <input id="image" name="name" type="text">
                        <label for="name">
                            Image<span>*</span>
                        </label>

                    </div>
                </div>
            </div>
        </div>
        <div class="content__section">
            <div class="section__row">
                <div class="section__row__column">
                    <div class="c-input c-input--text   ">
                        <input id="phone_number" name="mobile" type="tel" title="phone_number does not match" required>
                        <label>Phone number</label>

                    </div>
                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text   ">
                        <input type="email" id="email">
                        <label>Email Address</label>

                    </div>
                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text   ">
                        <select id="gender">
                            <option value="">Select an option&hellip;</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Others">Others</option>
                        </select>
                        <label>
                            Gender
                        </label>

                    </div>

                </div>
            </div>
            <div class="section__row">
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input id="date_of_birth" name="dob" type="date" value="None" required>
                        <label>
                            Date of birth
                        </label>

                    </div>

                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text   ">
                        <select id="blood_group">
                            <option value="">Select an option&hellip;</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="B-">B-</option>
                            <option value="B+">B+</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                        </select>
                        <label>
                            Blood Group
                        </label>

                    </div>

                </div>

            </div>
        </div>
        <div class="ucontent__section">
            <div class="user-profile__content__section__header">
                Address
            </div>
            <div class="section__row">
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="street_address" id="street_name" type="text" value="None" required>
                        <label for="street_address">
                            House No./ Street Name/ Area
                        </label>

                    </div>

                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="locality" type="text" id="colony" value="None" required>
                        <label for="locality">
                            Colony / Street / Locality
                        </label>

                    </div>

                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="city" type="text" id="city" value="Chennai" required>
                        <label>
                            City
                        </label>

                    </div>

                </div>
                <div class="section__row">
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input type="text" value="Tamil Nadu" id="state" required>
                            <label>
                                State
                            </label>

                        </div>

                    </div>
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input name="country" type="text" id="country" value="India" required>
                            <label>
                                Country
                            </label>
                        </div>

                    </div>

                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input name="pincode" type="text" id="pincode" value="600081" required>
                            <label>
                                Pincode
                            </label>

                        </div>

                    </div>
                </div>
            </div>
        </div>

        <div class="content__section">
            <div class="user-profile__content__section__header">
                Medical History
            </div>
            <div class="section__row">
                <div class="section__row__column">
                    <div class="c-input c-input--text">
                        <input type="text" id="drug" value="None" required>
                        <label>
                            list any drug allergies:
                        </label>

                    </div>

                </div>

                <div class="section__row__column">
                    <div class="c-input c-input--text">
                        <input type="text" id="disease" value="None" required>
                        <label>
                            Have you ever had disease:
                        </label>

                    </div>

                </div>

                <div class="section__row__column">
                    <div class="c-input c-input--text">
                        <input type="text" id="operation_dates" value="None" required>
                        <label>
                            list of operation dates of each:
                        </label>

                    </div>

                </div>

                <div class="section__row">
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input type="text" id="medications" value="None">
                            <label>
                                list any current Medications:
                            </label>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div>
        <button class="btn-1" type="submit" id="btn-save">Save changes</button>
    </div>

    <!-- footer section starts -->

    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>
    <!-- footer section ends -->
    <script src="../../assets/js/editProfile.js"></script>
    <script src="../../Components/header.js"></script>
    <script src="../../Components/footer.js"></script>

</body>

</html>