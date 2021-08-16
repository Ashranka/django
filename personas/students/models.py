from django.db import models

# Create your models here.

# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class studentsperformance(models.Model):
    id = models.TextField(primary_key=True, null=False)
    gender = models.TextField(blank=True, null=False)
    race_ethnicity = models.TextField(db_column='race/ethnicity', blank=True, null=False)  # Field renamed to remove unsuitable characters.
    parental_level_of_education = models.TextField(db_column='parental level of education', blank=True, null=False)  # Field renamed to remove unsuitable characters.
    lunch = models.TextField(blank=True, null=False)
    test_preparation_course = models.TextField(db_column='test preparation course', blank=True, null=False)  # Field renamed to remove unsuitable characters.
    math_score = models.IntegerField(db_column='math score', blank=True, null=True)  # Field renamed to remove
    # unsuitable characters.
    reading_score = models.IntegerField(db_column='reading score', blank=True, null=False)  # Field renamed to remove unsuitable characters.
    writing_score = models.IntegerField(db_column='writing score', blank=True, null=False)  # Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'studentsperformance'
    def __str__(self):
        return f'studentsperformance{self.id}: {self.gender} {self.race_ethnicity} {self.test_preparation_course} {self.math_score} {self.reading_score} {self.writing_score}'
