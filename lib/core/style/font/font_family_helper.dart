
class FontFamilyHelper{

  static const String arabic_cairo = 'cairo' ;
  static const String english_poppins = 'poppins' ;

  static String getLocalizationFontFamily(){
       // shared prefrances
    final getLocalization = "en" ;
    switch(getLocalization){
      case "en" :
        return english_poppins ;
      case "ar":
        return arabic_cairo ;
      default:return english_poppins ;
    }

  }

}