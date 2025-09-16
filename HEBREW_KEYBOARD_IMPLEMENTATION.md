# Hebrew Keyboard Implementation for Navit Internal GUI

## Problem Description

The Windows version of Navit uses the internal GUI interface, which includes a built-in virtual keyboard for touchscreen devices. However, this keyboard lacks Hebrew character support, making it impossible to search for Hebrew location names or input Hebrew text.

## Solution Overview

This implementation adds Hebrew keyboard layout support to Navit's internal GUI system by:

1. **Adding Hebrew keyboard layout constants** to the keyboard header file
2. **Implementing Hebrew character layout** following the existing Cyrillic/Greek patterns
3. **Enabling Hebrew keyboard mode selection** in the interface
4. **Supporting both Hebrew and English input** with easy switching

## Technical Details

### UTF-8 Support
Navit's internal GUI already supports UTF-8 encoding:
- Uses `g_utf8_*` functions for text processing
- Text rendering supports Unicode characters
- External Hebrew keyboard input works once layout is available

### Keyboard Layout System
The internal GUI uses a modular keyboard layout system:
- Each layout has upper/lowercase variants
- Layouts are defined by character arrays
- Mode switching between different keyboard types
- Font rendering supports international characters

## Implementation Plan

### Phase 1: Core Hebrew Layout
1. Add Hebrew keyboard constants (`VKBD_HEBREW_UPPER`, `VKBD_HEBREW_LOWER`)
2. Implement Hebrew character arrays following standard Hebrew keyboard layout
3. Add Hebrew mode switching logic
4. Update keyboard mode initialization to detect Hebrew locale

### Phase 2: Integration
1. Add Hebrew layout to keyboard mode table
2. Implement layout switching from numeric/other layouts
3. Add Hebrew alphabet characters (א-ת)
4. Include common Hebrew punctuation and symbols

### Phase 3: Enhancement
1. Support Hebrew locale detection
2. Add Hebrew-specific characters (ךםןףץ - final forms)
3. Optimize layout for common Hebrew input patterns
4. Test with real Hebrew location searches

## Files Modified

### 1. `navit/gui/internal/gui_internal_keyboard.h`
- Add Hebrew keyboard layout constants
- Define Hebrew keyboard mode flags

### 2. `navit/gui/internal/gui_internal_keyboard.c`
- Add Hebrew character layouts (upper/lowercase)
- Implement Hebrew keyboard mode entries
- Add Hebrew layout switching logic
- Update keyboard initialization for Hebrew locale

### 3. `navit/gui/internal/gui_internal_priv.h` (if needed)
- Add Hebrew-specific keyboard state variables

## Hebrew Keyboard Layout

The implementation will use the standard Hebrew keyboard layout:

**Upper Row:** ק ר א ט ו ן ם פ
**Middle Row:** ש ד ג כ ע י ח ל ך ף
**Bottom Row:** ז ס ב ה נ מ צ ת ץ

**Final forms:** ך ם ן ף ץ (automatically used when appropriate)

## Benefits

1. **Native Hebrew Support**: Users can input Hebrew text directly in the internal GUI
2. **No External Dependencies**: Uses existing UTF-8 infrastructure
3. **Consistent Interface**: Follows same pattern as existing keyboard layouts
4. **Locale-Aware**: Can automatically switch to Hebrew for Hebrew locales
5. **Bidirectional Support**: Works with existing RTL text rendering

## Testing Strategy

1. **Basic Character Input**: Verify all Hebrew characters display correctly
2. **Text Search**: Test Hebrew location name searches
3. **Layout Switching**: Verify smooth switching between Hebrew/English/numeric
4. **Mixed Text**: Test Hebrew + English input combinations
5. **External Keyboard**: Verify external Hebrew keyboard continues to work

## Compatibility

- **Windows**: Primary target platform
- **Linux**: Should work with existing GTK interface
- **Other Platforms**: Compatible with any platform using internal GUI

## Future Enhancements

1. **Smart Character Selection**: Auto-select final forms (ך,ם,ן,ף,ץ) at word endings
2. **Hebrew Numerals**: Add Hebrew number support (א׳, ב׳, etc.)
3. **Nikud Support**: Add Hebrew vowel marks for educational applications
4. **Right-to-Left Layout**: Optimize key arrangement for RTL input flow

## Implementation Status

- [x] Analysis and planning completed
- [ ] Hebrew keyboard constants added
- [ ] Hebrew character layouts implemented
- [ ] Keyboard mode switching updated
- [ ] Hebrew locale detection added
- [ ] Testing and validation completed

---

**Note**: This implementation maintains backward compatibility with all existing keyboard layouts and does not affect other GUI interfaces (GTK, QML, etc.).