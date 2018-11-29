SELECT   `visit_visit`.`visit_date`,
         `visit_visit`.`id`,
         `visit_location`.`location`,
         `visit_complaintname`.`complaint_name`,
         `visit_finding`.`finding_name`,
         `visit_treatment`.`treatment_name`,
         `patient_patient`.`last_name`,
         `patient_patient`.`first_name`
FROM     `visit_complaint`
INNER JOIN `visit_visit`  ON `visit_complaint`.`visit_id` = `visit_visit`.`id`
INNER JOIN `visit_location`  ON `visit_complaint`.`complaint_location_id` = `visit_location`.`id`
INNER JOIN `visit_complaintname`  ON `visit_complaint`.`complaint_name_id` = `visit_complaintname`.`id`
INNER JOIN `visit_finding`  ON `visit_finding`.`visit_id` = `visit_visit`.`id`
INNER JOIN `visit_treatment`  ON `visit_treatment`.`visit_id` = `visit_visit`.`id`
INNER JOIN `patient_patient`  ON `visit_visit`.`patient_id` = 881
