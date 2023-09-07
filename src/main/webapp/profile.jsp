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
                    <div class="o-profile-photo">
                        <p class="profile_name">Profile photo</p>
                        <div class="o-profile-photo__cont">

                            <div class="o-profile-photo__cont__img">
                                <img src="" id="image" alt="profile img">
                            </div>
                        </div>
                        <!-- <div class="o-profile-photo__desc">
                            <div class="o-profile-photo__desc__text">
                                Pick a photo from your computer
                            </div>
                            <div class="o-profile-photo__desc__actions">

                                <input type="file" name="add-photo" value="Add Photo">

                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="section__row__column" id="text">
                    <div class="c-input c-input--text has-value">
                        <input id="name" name="name" type="text" disabled>
                        <label for="name">
                            Name<span>*</span>
                        </label>

                    </div>
                </div>
            </div>
        </div>
        <div class="content__section">
            <div class="section__row">
                <div class="section__row__column">
                    <div class="c-input c-input--text disabled">
                        <input id="phone_number" name="mobile" type="number" disabled>
                        <label>Phone number</label>

                    </div>
                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text disabled">
                        <input type="email" id="email" disabled>
                        <label>Email Address</label>

                    </div>
                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text disabled">
                        <input type="text" placeholder="gender" id="gender" disabled>
                        <label>
                            Gender
                        </label>

                    </div>

                </div>
            </div>
            <div class="section__row">
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="dob" type="date" id="date_of_birth" disabled>
                        <label>
                            Date of birth
                        </label>

                    </div>

                </div>
                <div class="section__row__column">
                    <div class="c-input c-input--text disabled">
                        <input type="text" placeholder="blood group" id="blood_group" disabled>
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
                        <input name="street_address" type="text" id="street_name" disabled>
                        <label for="street_address">
                            House No./ Street Name/ Area
                        </label>

                    </div>

                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="locality" type="text" id="colony" disabled>
                        <label for="locality">
                            Colony / Street / Locality
                        </label>

                    </div>

                </div>
                <div class="section__row__column">

                    <div class="c-input c-input--text">
                        <input name="city" type="text" id="city" disabled>
                        <label>
                            City
                        </label>

                    </div>

                </div>
                <div class="section__row">
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input type="text" id="state" disabled>
                            <label>
                                State
                            </label>

                        </div>

                    </div>
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input name="country" type="text" id="country" disabled>
                            <label>
                                Country
                            </label>
                        </div>

                    </div>

                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input name="pincode" type="number" id="pincode" disabled>
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
                        <input type="text" id="drug" disabled>
                        <label>
                            list any drug allergies:
                        </label>

                    </div>

                </div>

                <div class="section__row__column">
                    <div class="c-input c-input--text">
                        <input type="text" id="disease" disabled>
                        <label>
                            Have you ever had disease:
                        </label>

                    </div>

                </div>

                <div class="section__row__column">
                    <div class="c-input c-input--text">
                        <input type="text" id="operation_dates" disabled>
                        <label>
                            list of operation dates of each:
                        </label>

                    </div>

                </div>

                <div class="section__row">
                    <div class="section__row__column">

                        <div class="c-input c-input--text">
                            <input type="text" id="medications" disabled>
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
        <button class="btn-1" id="edit-btn">Edit Profile</button>
        <button class="btn-1" id="delete-btn">Delete profile</button>
    </div>

    <!-- footer section starts -->

    <section class="footer">
        <div class="box-container" id="box-container"></div>

    </section>
    <!-- footer section ends -->

    <script src="../../Components/header.js"></script>
    <script src="../../assets/js/profile.js"></script>
    <script src="../../Components/footer.js"></script>

</body>

</html>