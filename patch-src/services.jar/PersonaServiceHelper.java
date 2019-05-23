package com.android.server.pm;

import lanchon.dexpatcher.annotation.*;
import android.util.Log;
import android.content.Context;

@DexEdit
public class PersonaServiceHelper {
  @DexReplace
  public static boolean isTimaAvailable(Context c) {
    Log.d("ICCC_PATCH", "isTimaAvailable() called!!!");
    return true;
  }
}
