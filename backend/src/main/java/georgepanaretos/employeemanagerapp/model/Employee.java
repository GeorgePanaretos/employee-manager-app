package georgepanaretos.employeemanagerapp.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
public class Employee implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false, updatable = false)
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(name = "job_title")
    private String jobTitle;

    @Column(unique = true)
    private String phone;

    @Column(name = "image_url")
    private String imageUrl;

    @Column(nullable = false, updatable = false, unique = true)
    private String employeeCode;

    private String address;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "department_id", nullable = false)
    private Department department;

    private Date dateOfBirth;
    private Date hireDate;

    @Column(columnDefinition = "boolean default true")
    private Boolean isActive;

    @Column(insertable = false, updatable = false)
    private Timestamp createdAt;

    @Column(insertable = false, updatable = false)
    private Timestamp updatedAt;

    @Column(nullable = false, unique = true)
    private String identificationNumber;

    private String emergencyContactName;
    private String emergencyContactPhone;
    private String emergencyContactRelationship;

    private String educationLevel;
    private String nationality;
    private String maritalStatus;
    private String contractType;
    private String jobLevel;

    private String supervisorName;
    private String supervisorEmail;

    private String workLocation;
    private String bankAccountNumber;
    private String taxIdNumber;
    private String socialSecurityNumber;

    private String employmentStatus;
    private Date terminationDate;

    @Column(columnDefinition = "TEXT")
    private String notes;
}