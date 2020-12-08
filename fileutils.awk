/^_Py_GetLocaleconvNumeric/ { inFunction = 1; printf " "; }
/^{/ && inFunction == 1 { print; print "#undef MS_WINDOWS"; getline; }
/^}/ && inFunction == 1 { inFunction = 0; print "#define MS_WINDOWS"; }
1
