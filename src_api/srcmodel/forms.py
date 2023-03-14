from django import forms
from srcmodel.models import User

class UserModelForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ('usertype',)
        widgets = {
            'usertype': forms.Select(choices=User.CHOICES)
        }