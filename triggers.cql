// ----- ATTRIBUTES

//PROPERTY_MUST_BE_OF_DATATYPE(PERSON, ID, INTEGER)
CALL apoc.trigger.add('person_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of Person must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(PERSON, FIRSTNAME, STRING)
CALL apoc.trigger.add('person_firstname_must_be_datatype_string', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    exists(node.firstname) and not 
    apoc.meta.cypher.isType(node.firstname, "STRING"), 
    "firstname property of Person must be of datatype STRING", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(PERSON, LASTNAME, STRING)
CALL apoc.trigger.add('person_lastname_must_be_datatype_string', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    exists(node.lastname) and not 
    apoc.meta.cypher.isType(node.lastname, "STRING"), 
    "lastname property of Person must be of datatype STRING", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(REGISTRATION, ID, INTEGER)
CALL apoc.trigger.add('registration_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Registration")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of Registration must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(REGISTRATION, REGISTRATIONDATE, DATE)
CALL apoc.trigger.add('registration_registrationdate_must_be_datatype_date', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Registration")
) AS node
CALL apoc.util.validate(
    exists(node.registrationDate) and not 
    apoc.meta.cypher.isType(node.registrationDate, "DATE"), 
    "registrationDate property of Registration must be of datatype DATE", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(ACCOUNT, ID, INTEGER)
CALL apoc.trigger.add('account_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of Account must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(ACCOUNT, EMAIL, STRING)
CALL apoc.trigger.add('account_email_must_be_datatype_string', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    exists(node.email) and not 
    apoc.meta.cypher.isType(node.email, "STRING"), 
    "email property of Account must be of datatype STRING", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(ACCOUNT, PASSWORD, STRING)
CALL apoc.trigger.add('account_password_must_be_datatype_string', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    exists(node.password) and not 
    apoc.meta.cypher.isType(node.password, "STRING"), 
    "password property of Account must be of datatype STRING", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(GENERATION, ID, INTEGER)
CALL apoc.trigger.add('generation_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Generation")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of Generation must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(GENERATION, GENERATIONDATE, DATE)
CALL apoc.trigger.add('generation_generationdate_must_be_datatype_date', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Generation")
) AS node
CALL apoc.util.validate(
    exists(node.generationDate) and not 
    apoc.meta.cypher.isType(node.generationDate, "DATE"), 
    "generationDate property of Generation must be of datatype DATE", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(VERIFICATIONCODE, ID, INTEGER)
CALL apoc.trigger.add('verificationcode_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of VerificationCode must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(VERIFICATIONCODE, CODE, STRING)
CALL apoc.trigger.add('verificationcode_code_must_be_datatype_string', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    exists(node.code) and not 
    apoc.meta.cypher.isType(node.code, "STRING"), 
    "code property of VerificationCode must be of datatype STRING", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(VERIFICATIONCODE, EXPIRATIONDATE, DATE)
CALL apoc.trigger.add('verificationcode_expirationdate_must_be_datatype_date', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    exists(node.expirationDate) and not 
    apoc.meta.cypher.isType(node.expirationDate, "DATE"), 
    "expirationDate property of VerificationCode must be of datatype DATE", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(VERIFICATION, ID, INTEGER)
CALL apoc.trigger.add('verification_id_must_be_datatype_integer', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Verification")
) AS node
CALL apoc.util.validate(
    exists(node.id) and not 
    apoc.meta.cypher.isType(node.id, "INTEGER"), 
    "id property of Verification must be of datatype INTEGER", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_OF_DATATYPE(VERIFICATION, VERIFICATIONDATE, DATE)
CALL apoc.trigger.add('verification_verificationdate_must_be_datatype_date', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification") + 
    apoc.trigger.nodesByLabel($assignedNodeProperties, "Verification")
) AS node
CALL apoc.util.validate(
    exists(node.verificationDate) and not 
    apoc.meta.cypher.isType(node.verificationDate, "DATE"), 
    "verificationDate property of Verification must be of datatype DATE", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(PERSON, ID)
CALL apoc.trigger.add('person_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") and not 
    exists(node.id), 
    "id property of Person must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(PERSON, FIRSTNAME)
CALL apoc.trigger.add('person_firstname_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") and not 
    exists(node.firstname), 
    "firstname property of Person must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(PERSON, LASTNAME)
CALL apoc.trigger.add('person_lastname_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Person") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Person")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") and not 
    exists(node.lastname), 
    "lastname property of Person must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(REGISTRATION, ID)
CALL apoc.trigger.add('registration_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Registration") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Registration")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Registration") and not 
    exists(node.id), 
    "id property of Registration must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(REGISTRATION, REGISTRATIONDATE)
CALL apoc.trigger.add('registration_registrationdate_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Registration") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Registration")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Registration") and not 
    exists(node.registrationDate), 
    "registrationDate property of Registration must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(ACCOUNT, ID)
CALL apoc.trigger.add('account_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Account") and not 
    exists(node.id), 
    "id property of Account must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(ACCOUNT, EMAIL)
CALL apoc.trigger.add('account_email_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Account") and not 
    exists(node.email), 
    "email property of Account must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(ACCOUNT, PASSWORD)
CALL apoc.trigger.add('account_password_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Account") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Account")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Account") and not 
    exists(node.password), 
    "password property of Account must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(GENERATION, ID)
CALL apoc.trigger.add('generation_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Generation") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Generation")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Generation") and not 
    exists(node.id), 
    "id property of Generation must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(GENERATION, GENERATIONDATE)
CALL apoc.trigger.add('generation_generationdate_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Generation") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Generation")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Generation") and not 
    exists(node.generationDate), 
    "generationDate property of Generation must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(VERIFICATIONCODE, ID)
CALL apoc.trigger.add('verificationcode_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "VerificationCode") and not 
    exists(node.id), 
    "id property of VerificationCode must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(VERIFICATIONCODE, CODE)
CALL apoc.trigger.add('verificationcode_code_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "VerificationCode") and not 
    exists(node.code), 
    "code property of VerificationCode must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(VERIFICATIONCODE, EXPIRATIONDATE)
CALL apoc.trigger.add('verificationcode_expirationdate_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "VerificationCode")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "VerificationCode") and not 
    exists(node.expirationDate), 
    "expirationDate property of VerificationCode must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(VERIFICATION, ID)
CALL apoc.trigger.add('verification_id_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Verification") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Verification")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Verification") and not 
    exists(node.id), 
    "id property of Verification must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_PRESENT(VERIFICATION, VERIFICATIONDATE)
CALL apoc.trigger.add('verification_verificationdate_must_be_present', 
'UNWIND (
    $createdNodes + 
    apoc.trigger.nodesByLabel($assignedLabels, "Verification") + 
    apoc.trigger.nodesByLabel($removedNodeProperties, "Verification")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Verification") and not 
    exists(node.verificationDate), 
    "verificationDate property of Verification must be present", 
    null
)
RETURN null', { phase:'before' });

//PROPERTY_MUST_BE_UNIQUE(PERSON, ID)
CREATE CONSTRAINT person_id_must_be_unique IF NOT EXISTS FOR (node:Person) REQUIRE node.id IS UNIQUE;

//PROPERTY_MUST_BE_UNIQUE(REGISTRATION, ID)
CREATE CONSTRAINT registration_id_must_be_unique IF NOT EXISTS FOR (node:Registration) REQUIRE node.id IS UNIQUE;

//PROPERTY_MUST_BE_UNIQUE(ACCOUNT, ID)
CREATE CONSTRAINT account_id_must_be_unique IF NOT EXISTS FOR (node:Account) REQUIRE node.id IS UNIQUE;

//PROPERTY_MUST_BE_UNIQUE(GENERATION, ID)
CREATE CONSTRAINT generation_id_must_be_unique IF NOT EXISTS FOR (node:Generation) REQUIRE node.id IS UNIQUE;

//PROPERTY_MUST_BE_UNIQUE(VERIFICATIONCODE, ID)
CREATE CONSTRAINT verificationcode_id_must_be_unique IF NOT EXISTS FOR (node:VerificationCode) REQUIRE node.id IS UNIQUE;

//PROPERTY_MUST_BE_UNIQUE(VERIFICATION, ID)
CREATE CONSTRAINT verification_id_must_be_unique IF NOT EXISTS FOR (node:Verification) REQUIRE node.id IS UNIQUE;


// ----- STEREOTYPES

//LABEL_CANNOT_BE_IN_COMBINATION(PERSON, {REGISTRATION, ACCOUNT, GENERATION, VERIFICATIONCODE, VERIFICATION})
CALL apoc.trigger.add('person_cannot_be_with_registration_or_account_or_generation_or_verificationcode_or_verification', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Person")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Registration") or apoc.label.exists(node, "Account") or apoc.label.exists(node, "Generation") or apoc.label.exists(node, "VerificationCode") or apoc.label.exists(node, "Verification"), 
    "Person label cannot be in a combination with Registration or Account or Generation or VerificationCode or Verification labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_IN_COMBINATION(REGISTRATION, {PERSON, ACCOUNT, GENERATION, VERIFICATIONCODE, VERIFICATION})
CALL apoc.trigger.add('registration_cannot_be_with_person_or_account_or_generation_or_verificationcode_or_verification', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") or apoc.label.exists(node, "Account") or apoc.label.exists(node, "Generation") or apoc.label.exists(node, "VerificationCode") or apoc.label.exists(node, "Verification"), 
    "Registration label cannot be in a combination with Person or Account or Generation or VerificationCode or Verification labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_IN_COMBINATION(ACCOUNT, {PERSON, REGISTRATION, GENERATION, VERIFICATIONCODE, VERIFICATION})
CALL apoc.trigger.add('account_cannot_be_with_person_or_registration_or_generation_or_verificationcode_or_verification', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") or apoc.label.exists(node, "Registration") or apoc.label.exists(node, "Generation") or apoc.label.exists(node, "VerificationCode") or apoc.label.exists(node, "Verification"), 
    "Account label cannot be in a combination with Person or Registration or Generation or VerificationCode or Verification labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_IN_COMBINATION(GENERATION, {PERSON, REGISTRATION, ACCOUNT, VERIFICATIONCODE, VERIFICATION})
CALL apoc.trigger.add('generation_cannot_be_with_person_or_registration_or_account_or_verificationcode_or_verification', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") or apoc.label.exists(node, "Registration") or apoc.label.exists(node, "Account") or apoc.label.exists(node, "VerificationCode") or apoc.label.exists(node, "Verification"), 
    "Generation label cannot be in a combination with Person or Registration or Account or VerificationCode or Verification labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_IN_COMBINATION(VERIFICATIONCODE, {PERSON, REGISTRATION, ACCOUNT, GENERATION, VERIFICATION})
CALL apoc.trigger.add('verificationcode_cannot_be_with_person_or_registration_or_account_or_generation_or_verification', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") or apoc.label.exists(node, "Registration") or apoc.label.exists(node, "Account") or apoc.label.exists(node, "Generation") or apoc.label.exists(node, "Verification"), 
    "VerificationCode label cannot be in a combination with Person or Registration or Account or Generation or Verification labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_IN_COMBINATION(VERIFICATION, {PERSON, REGISTRATION, ACCOUNT, GENERATION, VERIFICATIONCODE})
CALL apoc.trigger.add('verification_cannot_be_with_person_or_registration_or_account_or_generation_or_verificationcode', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "Person") or apoc.label.exists(node, "Registration") or apoc.label.exists(node, "Account") or apoc.label.exists(node, "Generation") or apoc.label.exists(node, "VerificationCode"), 
    "Verification label cannot be in a combination with Person or Registration or Account or Generation or VerificationCode labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(PERSON)
CALL apoc.trigger.add('person_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Person")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "Person"), 
    "Person label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(USER)
CALL apoc.trigger.add('user_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "User")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "User"), 
    "User label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(REGISTRATION)
CALL apoc.trigger.add('registration_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Registration")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "Registration"), 
    "Registration label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(ACCOUNT)
CALL apoc.trigger.add('account_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Account")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "Account"), 
    "Account label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(VERIFIEDACCOUNT)
CALL apoc.trigger.add('verifiedaccount_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "VerifiedAccount")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "VerifiedAccount"), 
    "VerifiedAccount label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(GENERATION)
CALL apoc.trigger.add('generation_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Generation")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "Generation"), 
    "Generation label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(VERIFICATIONCODE)
CALL apoc.trigger.add('verificationcode_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "VerificationCode")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "VerificationCode"), 
    "VerificationCode label cannot be removed", 
    null
)
RETURN null', { phase:'before' });

//LABEL_CANNOT_BE_REMOVED(VERIFICATION)
CALL apoc.trigger.add('verification_cannot_be_removed', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Verification")
) AS node
CALL apoc.util.validate(
    not apoc.label.exists(node, "Verification"), 
    "Verification label cannot be removed", 
    null
)
RETURN null', { phase:'before' });


// ----- GENERALIZATIONS

//LABEL_MUST_BE_IN_COMBINATION(USER, {PERSON})
CALL apoc.trigger.add('user_must_be_with_person', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "User") + 
    apoc.trigger.nodesByLabel($removedLabels, "Person")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "User") and not 
    (apoc.label.exists(node, "Person")), 
    "User label must be in a combination with Person labels", 
    null
)
RETURN null', { phase:'before' });

//LABEL_MUST_BE_IN_COMBINATION(VERIFIEDACCOUNT, {ACCOUNT})
CALL apoc.trigger.add('verifiedaccount_must_be_with_account', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerifiedAccount") + 
    apoc.trigger.nodesByLabel($removedLabels, "Account")
) AS node
CALL apoc.util.validate(
    apoc.label.exists(node, "VerifiedAccount") and not 
    (apoc.label.exists(node, "Account")), 
    "VerifiedAccount label must be in a combination with Account labels", 
    null
)
RETURN null', { phase:'before' });


// ----- GENERALIZATION SETS


// ----- ASSOCIATIONS

//RELATIONSHIP_MUST_BE_PRESENT(REGISTRATION, USER)
CALL apoc.trigger.add('registration_must_be_in_relationship_with_user_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:User) | n2 ]) < 1, 
    "Registration label must be in relationship with User label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('registration_must_be_in_relationship_with_user_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "User")
) AS node2
UNWIND (
    [(n1:Registration)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:User) | n2 ]) < 1, 
    "Registration label must be in relationship with User label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('registration_must_be_in_relationship_with_user_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Registration") and 
    (SIZE([(node1)--(n2:User) | n2 ]) < 1), 
    "Registration label must be in relationship with User label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(USER, REGISTRATION)
CALL apoc.trigger.add('user_must_be_in_relationship_with_registration_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "User")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) < 1, 
    "User label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('user_must_be_in_relationship_with_registration_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Registration")
) AS node2
UNWIND (
    [(n1:User)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) < 1, 
    "User label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('user_must_be_in_relationship_with_registration_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "User") and 
    (SIZE([(node1)--(n2:Registration) | n2 ]) < 1), 
    "User label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(REGISTRATION, ACCOUNT)
CALL apoc.trigger.add('registration_must_be_in_relationship_with_account_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) < 1, 
    "Registration label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('registration_must_be_in_relationship_with_account_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Account")
) AS node2
UNWIND (
    [(n1:Registration)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) < 1, 
    "Registration label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('registration_must_be_in_relationship_with_account_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Registration") and 
    (SIZE([(node1)--(n2:Account) | n2 ]) < 1), 
    "Registration label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(ACCOUNT, REGISTRATION)
CALL apoc.trigger.add('account_must_be_in_relationship_with_registration_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) < 1, 
    "Account label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('account_must_be_in_relationship_with_registration_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Registration")
) AS node2
UNWIND (
    [(n1:Account)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) < 1, 
    "Account label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('account_must_be_in_relationship_with_registration_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Account") and 
    (SIZE([(node1)--(n2:Registration) | n2 ]) < 1), 
    "Account label must be in relationship with Registration label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(GENERATION, ACCOUNT)
CALL apoc.trigger.add('generation_must_be_in_relationship_with_account_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) < 1, 
    "Generation label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('generation_must_be_in_relationship_with_account_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Account")
) AS node2
UNWIND (
    [(n1:Generation)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) < 1, 
    "Generation label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('generation_must_be_in_relationship_with_account_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Generation") and 
    (SIZE([(node1)--(n2:Account) | n2 ]) < 1), 
    "Generation label must be in relationship with Account label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(GENERATION, VERIFICATIONCODE)
CALL apoc.trigger.add('generation_must_be_in_relationship_with_verificationcode_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1, 
    "Generation label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('generation_must_be_in_relationship_with_verificationcode_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "VerificationCode")
) AS node2
UNWIND (
    [(n1:Generation)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1, 
    "Generation label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('generation_must_be_in_relationship_with_verificationcode_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Generation") and 
    (SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1), 
    "Generation label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(VERIFICATIONCODE, GENERATION)
CALL apoc.trigger.add('verificationcode_must_be_in_relationship_with_generation_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Generation) | n2 ]) < 1, 
    "VerificationCode label must be in relationship with Generation label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verificationcode_must_be_in_relationship_with_generation_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Generation")
) AS node2
UNWIND (
    [(n1:VerificationCode)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Generation) | n2 ]) < 1, 
    "VerificationCode label must be in relationship with Generation label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verificationcode_must_be_in_relationship_with_generation_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "VerificationCode") and 
    (SIZE([(node1)--(n2:Generation) | n2 ]) < 1), 
    "VerificationCode label must be in relationship with Generation label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(VERIFICATION, VERIFICATIONCODE)
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verificationcode_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1, 
    "Verification label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verificationcode_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "VerificationCode")
) AS node2
UNWIND (
    [(n1:Verification)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1, 
    "Verification label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verificationcode_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Verification") and 
    (SIZE([(node1)--(n2:VerificationCode) | n2 ]) < 1), 
    "Verification label must be in relationship with VerificationCode label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(VERIFICATION, VERIFIEDACCOUNT)
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verifiedaccount_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerifiedAccount) | n2 ]) < 1, 
    "Verification label must be in relationship with VerifiedAccount label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verifiedaccount_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "VerifiedAccount")
) AS node2
UNWIND (
    [(n1:Verification)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerifiedAccount) | n2 ]) < 1, 
    "Verification label must be in relationship with VerifiedAccount label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verification_must_be_in_relationship_with_verifiedaccount_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Verification") and 
    (SIZE([(node1)--(n2:VerifiedAccount) | n2 ]) < 1), 
    "Verification label must be in relationship with VerifiedAccount label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_PRESENT(VERIFIEDACCOUNT, VERIFICATION)
CALL apoc.trigger.add('verifiedaccount_must_be_in_relationship_with_verification_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerifiedAccount")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Verification) | n2 ]) < 1, 
    "VerifiedAccount label must be in relationship with Verification label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verifiedaccount_must_be_in_relationship_with_verification_labelremoved', 
'UNWIND (
    apoc.trigger.nodesByLabel($removedLabels, "Verification")
) AS node2
UNWIND (
    [(n1:VerifiedAccount)--(node2) | n1 ]
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Verification) | n2 ]) < 1, 
    "VerifiedAccount label must be in relationship with Verification label", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('verifiedaccount_must_be_in_relationship_with_verification_relationdeleted', 
'UNWIND (
    $deletedRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "VerifiedAccount") and 
    (SIZE([(node1)--(n2:Verification) | n2 ]) < 1), 
    "VerifiedAccount label must be in relationship with Verification label", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(REGISTRATION, USER, 1)
CALL apoc.trigger.add('cardinality_from_registration_to_user_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:User) | n2 ]) > 1, 
    "Cardinality from Registration label to User label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_registration_to_user_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Registration") and 
    (SIZE([(node1)--(n2:User) | n2 ]) > 1), 
    "Cardinality from Registration label to User label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(USER, REGISTRATION, 1)
CALL apoc.trigger.add('cardinality_from_user_to_registration_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "User")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) > 1, 
    "Cardinality from User label to Registration label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_user_to_registration_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "User") and 
    (SIZE([(node1)--(n2:Registration) | n2 ]) > 1), 
    "Cardinality from User label to Registration label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(REGISTRATION, ACCOUNT, 1)
CALL apoc.trigger.add('cardinality_from_registration_to_account_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Registration")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) > 1, 
    "Cardinality from Registration label to Account label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_registration_to_account_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Registration") and 
    (SIZE([(node1)--(n2:Account) | n2 ]) > 1), 
    "Cardinality from Registration label to Account label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(ACCOUNT, REGISTRATION, 1)
CALL apoc.trigger.add('cardinality_from_account_to_registration_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Account")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Registration) | n2 ]) > 1, 
    "Cardinality from Account label to Registration label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_account_to_registration_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Account") and 
    (SIZE([(node1)--(n2:Registration) | n2 ]) > 1), 
    "Cardinality from Account label to Registration label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(GENERATION, ACCOUNT, 1)
CALL apoc.trigger.add('cardinality_from_generation_to_account_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Account) | n2 ]) > 1, 
    "Cardinality from Generation label to Account label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_generation_to_account_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Generation") and 
    (SIZE([(node1)--(n2:Account) | n2 ]) > 1), 
    "Cardinality from Generation label to Account label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(GENERATION, VERIFICATIONCODE, 1)
CALL apoc.trigger.add('cardinality_from_generation_to_verificationcode_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Generation")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) > 1, 
    "Cardinality from Generation label to VerificationCode label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_generation_to_verificationcode_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Generation") and 
    (SIZE([(node1)--(n2:VerificationCode) | n2 ]) > 1), 
    "Cardinality from Generation label to VerificationCode label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(VERIFICATIONCODE, GENERATION, 1)
CALL apoc.trigger.add('cardinality_from_verificationcode_to_generation_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Generation) | n2 ]) > 1, 
    "Cardinality from VerificationCode label to Generation label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_verificationcode_to_generation_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "VerificationCode") and 
    (SIZE([(node1)--(n2:Generation) | n2 ]) > 1), 
    "Cardinality from VerificationCode label to Generation label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(VERIFICATION, VERIFICATIONCODE, 1)
CALL apoc.trigger.add('cardinality_from_verification_to_verificationcode_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerificationCode) | n2 ]) > 1, 
    "Cardinality from Verification label to VerificationCode label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_verification_to_verificationcode_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Verification") and 
    (SIZE([(node1)--(n2:VerificationCode) | n2 ]) > 1), 
    "Cardinality from Verification label to VerificationCode label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(VERIFICATIONCODE, VERIFICATION, 1)
CALL apoc.trigger.add('cardinality_from_verificationcode_to_verification_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerificationCode")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Verification) | n2 ]) > 1, 
    "Cardinality from VerificationCode label to Verification label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_verificationcode_to_verification_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "VerificationCode") and 
    (SIZE([(node1)--(n2:Verification) | n2 ]) > 1), 
    "Cardinality from VerificationCode label to Verification label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(VERIFICATION, VERIFIEDACCOUNT, 1)
CALL apoc.trigger.add('cardinality_from_verification_to_verifiedaccount_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "Verification")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:VerifiedAccount) | n2 ]) > 1, 
    "Cardinality from Verification label to VerifiedAccount label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_verification_to_verifiedaccount_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "Verification") and 
    (SIZE([(node1)--(n2:VerifiedAccount) | n2 ]) > 1), 
    "Cardinality from Verification label to VerifiedAccount label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });

//RELATIONSHIP_MUST_BE_LIMITED(VERIFIEDACCOUNT, VERIFICATION, 1)
CALL apoc.trigger.add('cardinality_from_verifiedaccount_to_verification_must_be_limited_to_1_labelassigned', 
'UNWIND (
    apoc.trigger.nodesByLabel($assignedLabels, "VerifiedAccount")
) AS node1
CALL apoc.util.validate(
    SIZE([(node1)--(n2:Verification) | n2 ]) > 1, 
    "Cardinality from VerifiedAccount label to Verification label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });
CALL apoc.trigger.add('cardinality_from_verifiedaccount_to_verification_must_be_limited_to_1_relationcreated', 
'UNWIND (
    $createdRelationships
) AS rel
UNWIND (
    [apoc.rel.startNode(rel), apoc.rel.endNode(rel)]
) AS node1
CALL apoc.util.validate(
    apoc.label.exists(node1, "VerifiedAccount") and 
    (SIZE([(node1)--(n2:Verification) | n2 ]) > 1), 
    "Cardinality from VerifiedAccount label to Verification label must be limited to 1", 
    null
)
RETURN null', { phase:'before' });


