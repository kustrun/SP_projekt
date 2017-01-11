from django import forms
from django.contrib.auth.models import User

class LoginForm(forms.Form):
    username = forms.CharField(label="Username", max_length=50, required=True)
    password = forms.CharField(label="Password" ,max_length=50, widget=forms.PasswordInput, required=True)

class RegisterForm(forms.Form):
    email = forms.CharField(label="Email", max_length=100, widget=forms.EmailInput, required=True)
    username = forms.CharField(label="Username", max_length=50, required=True)
    password = forms.CharField(label="Password", max_length=50, widget=forms.PasswordInput, required=True)

    def clean_username(self):
        try:
            user = User.objects.get(username__iexact=self.cleaned_data['username'])
        except User.DoesNotExist:
            return self.cleaned_data['username']
        raise forms.ValidationError(("username"))

class ForgottenPasswordForm(forms.Form):
    email = forms.CharField(label="Email", max_length=100, widget=forms.EmailInput, required=True)

class CommentNewsForm(forms.Form):
    comment = forms.CharField(label="", help_text="", widget=forms.Textarea)
