SELECT
    `visit_visit`.`visit_date`,
    `visit_prescription`.`medicine_quantity`,
    `visit_medicine`.`brand_name`,
    `visit_medicine`.`generic_name`,
    `visit_dose`.`dose_name`,
    `visit_reminder`.`prescription_reminder`
FROM
    visit_visit,
    `visit_dose`,
    `visit_prescription`,
    `visit_medicine`,
    `visit_reminder`
JOIN
    visit_prescription.medicine_id = visit_medicine.id,
WHERE
    visit_visit.visit_date = CURDATE() AND visit_visit.patient_id = 1
