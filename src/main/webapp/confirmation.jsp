<!DOCTYPE html>
<html>
<head>
    <style>
     .confirmation-container {
    background-color: #0e6453; /* Green background color */
    color: white;
    padding: 10px;
    text-align: center;
    position: fixed;
    top: 50%; /* Center vertically on the screen */
    left: 50%; /* Center horizontally on the screen */
    transform: translate(-50%, -50%); /* Center the box perfectly */
    border: 1px solid #0a812a; /* Add a border for a box-like appearance */
    box-shadow: .5rem .5rem 0 rgba(22, 160, 133, .2); /* Add a subtle shadow */
    border-radius: 5px; /* Rounded corners */
    z-index: 1; /* Ensure the popup is on top of other content */
}

/* Styling for the close button */
.close-button {
    position: absolute;
    top: 5px;
    right: 5px;
    padding: 5px;
    cursor: pointer;
}
    </style>
</head>
<body>
    <div class="confirmation-container">
     
        <span id="confirmationMessage">
            <%= request.getSession().getAttribute("logoutMessage") %>
        </span>
        <!-- Close button to dismiss the alert -->
        <span class="close-button" onclick="closeConfirmation()">×</span>
    </div>

    <script>
        // Function to close the confirmation alert
        function closeConfirmation() {
            var confirmationContainer = document.querySelector(".confirmation-container");
            confirmationContainer.style.display = "none";
        }

        // Display the confirmation message and close the alert after a delay
        var confirmationMessage = document.getElementById("confirmationMessage");
        if (confirmationMessage) {
            // Display the alert
            var confirmationContainer = document.querySelector(".confirmation-container");
            confirmationContainer.style.display = "block";

            // Close the alert after 3 seconds (adjust the delay as needed)
            setTimeout(function() {
                closeConfirmation();
            }, 3000);
        }

        // Redirect to the index page after the alert is closed
        setTimeout(function() {
            window.location.href = '<%= request.getContextPath() %>/index';
        }, 3000);
    </script>
</body>
</html>
