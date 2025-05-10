CALL apoc.trigger.add('lion_must_be_with_animal',
'UNWIND(
apoc.trigger.nodesByLabel($assignedLabels, "Lion") +
apoc.trigger.nodesByLabel($removedLabels, "Animal")
) AS node

CALL apoc.util.validate(
apoc.label.exists(node, "Lion") and not
(apoc.label.exists(node, "Animal")),
"Lion label must be in a combination with Animal", null
) RETURN null', { phase:'before' });

//LABEL_MUST_BE_IN_COMBINATION(Animal, {Lion, Tiger})
CALL apoc.trigger.add('animal_must_be_with_lion_or_tiger',
'UNWIND(
apoc.trigger.nodesByLabel($assignedLabels, "Animal") +
apoc.trigger.nodesByLabel($removedLabels, "Lion") +
apoc.trigger.nodesByLabel($removedLabels, "Tiger")
) AS node

CALL apoc.util.validate(
apoc.label.exists(node, "Animal") and not (
apoc.label.exists(node, "Lion") or apoc.label.exists(node, "Tiger")
), "Animal label must be in combination with Lion or Tiger", null
) RETURN null', { phase:'before' });
//LABEL_CANNOT_BE_IN_COMBINATION(Lion, {Tiger})

CALL apoc.trigger.add('lion_cannot_be_with_tiger',
'UNWIND(
apoc.trigger.nodesByLabel($assignedLabels, "Lion")
) AS node CALL apoc.util.validate(
apoc.label.exists(node, "Tiger"),
"Lion label cannot be in a combination with Tiger", null
) RETURN null', { phase:'before' });