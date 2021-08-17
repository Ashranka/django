from django.db import models

# Create your models here.

# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _

gender_choises = (
    ("male", "male"),
    ("female", "female"),
)
race_choices = (
    ("group A", "group A"),
    ("group B", "group B"),
    ("group C", "group C"),
    ("group D", "group D"),
    ("group E", "group E"),
)
Parenst_choices = (
    ("bachelor's degree", "bachelor's degree"),
    ("some college", "some college"),
    ("master's degree", "master's degree"),
    ("associate's degree", "associate's degree"),
    ("high school", "high school"),
    ("some high school", "some high school"),
)

launch_choises = (
    ("standard", "standard"),
    ("free/reduced", "free/reduced"),
)

preparation_choises = (
    ("none", "none"),
    ("completed", "completed"),
)



class studentsperformance(models.Model):
    gender = models.CharField(null=False, max_length=15, choices=gender_choises, default="male")
    race_ethnicity = models.CharField(db_column='race/ethnicity', max_length=15, choices=race_choices,default="group A" ,null=False)  # Field renamed to remove unsuitable characters.
    parental_level_of_education = models.CharField(db_column='parental level of education', max_length=20, choices=Parenst_choices, default="bachelor's degree",null=False)  # Field renamed to remove unsuitable characters.
    lunch = models.CharField(null=False,max_length=25, choices=launch_choises, default="standard")
    test_preparation_course = models.CharField(db_column='test preparation course', max_length=15, choices=preparation_choises,default="none" ,null=False)  # Field renamed to remove unsuitable characters.
    math_score = models.IntegerField(db_column='math score', help_text="Valores entre 0 y 100", null=True)  # Field renamed to remove
    # unsuitable characters.
    reading_score = models.IntegerField(db_column='reading score', help_text="Valores entre 0 y 100", null=False)  # Field renamed to remove unsuitable characters.
    writing_score = models.IntegerField(db_column='writing score', help_text="Valores entre 0 y 100", null=False)  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'studentsperformance'
    def __str__(self):
        return f'studentsperformance{self.id}: {self.gender} {self.race_ethnicity} {self.test_preparation_course} {self.math_score} {self.reading_score} {self.writing_score}'
