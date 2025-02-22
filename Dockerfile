# استخدم صورة .NET الرسمية
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# انسخ الملفات المنشورة إلى الحاوية
COPY . .

# تعيين المتغير PORT وإعداد تشغيل التطبيق
ENV ASPNETCORE_URLS=http://+:${PORT}
CMD ["dotnet", "TestApi.dll"]
