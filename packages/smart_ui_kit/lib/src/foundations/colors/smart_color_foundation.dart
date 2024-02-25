import 'package:flutter/material.dart';
import 'package:smart_ui_kit/src/foundations/foundations.dart';
import 'package:smart_ui_kit/src/tokens/tokens.dart';

part '_smart_action_color.dart';
part '_smart_background_color.dart';
part '_smart_foreground_color.dart';
part '_smart_neutral_color.dart';
part '_smart_outline_color.dart';
part '_smart_semantic_color.dart';

@immutable
class SmartColorFoundation {
  const SmartColorFoundation._();

  static final Color bgMain = SmartColors.gray.shade50;
  static final Color bgSubtle = SmartColors.gray.shade100;
  static final Color bgStrong = SmartColors.gray.shade200;
  static final Color bgWhite = SmartColors.gray[0]!;
  static final Color bgInverse = SmartColors.gray.shade900;

  static final Color bgPrimary = SmartColors.primary.shade500;
  static final Color bgSecondary = SmartColors.secondary.shade500;
  static final Color bgError = SmartColors.error.shade500;
  static final Color bgSuccess = SmartColors.success.shade500;
  static final Color bgInfo = SmartColors.info.shade500;
  static final Color bgWarning = SmartColors.warning.shade500;
  static final Color bgGray = SmartColors.gray.shade800;

  static final Color bgPrimarySubtle = SmartColors.primary.shade50;
  static final Color bgSecondarySubtle = SmartColors.secondary.shade50;
  static final Color bgErrorSubtle = SmartColors.error.shade100;
  static final Color bgSuccessSubtle = SmartColors.success.shade50;
  static final Color bgInfoSubtle = SmartColors.info[25]!;
  static final Color bgWarningSubtle = SmartColors.warning.shade50;
  static final Color bgGraySubtle = SmartColors.gray[25]!;

  static final Color bgPrimaryDark = SmartColors.primary.shade600;
  static final Color bgSecondaryDark = SmartColors.secondary.shade600;
  static final Color bgErrorDark = SmartColors.error.shade600;
  static final Color bgSuccessDark = SmartColors.success.shade600;
  static final Color bgInfoDark = SmartColors.info.shade600;
  static final Color bgWarningDark = SmartColors.warning.shade600;
  static final Color bgGrayDark = SmartColors.gray.shade600;

  static final Color bgPrimarySubtleDark = SmartColors.primary.shade900;
  static final Color bgSecondarySubtleDark = SmartColors.secondary.shade900;
  static final Color bgErrorSubtleDark = SmartColors.error.shade900;
  static final Color bgSuccessSubtleDark = SmartColors.success.shade900;
  static final Color bgInfoSubtleDark = SmartColors.info.shade900;
  static final Color bgWarningSubtleDark = SmartColors.warning.shade900;
  static final Color bgGraySubtleDark = SmartColors.gray.shade900;

  static final Color bgCardMain = SmartColors.gray[0]!;
  static final Color bgCardSecondary = SmartColors.gray.shade50;
  static final Color bgCardMainDark = SmartColors.gray.shade800;
  static final Color bgCardSecondaryDark = SmartColors.gray.shade700;

  static final Color outlineNeutralMain = Colors.black.withOpacity(0.1);
  static final Color outlineNeutralStrong = Colors.black.withOpacity(0.25);
  static final Color outlineNeutralSubtle = Colors.black.withOpacity(0.05);
  static final Color outlineNeutralMainDark = Colors.white.withOpacity(0.1);
  static final Color outlineNeutralStrongDark = Colors.white.withOpacity(0.25);
  static final Color outlineNeutralSubtleDark = Colors.white.withOpacity(0.05);

  static final Color outlinePrimary =
      SmartColors.primary.shade500.withOpacity(0.25);
  static final Color outlineSecondary =
      SmartColors.secondary.shade500.withOpacity(0.25);
  static final Color outlineError =
      SmartColors.error.shade500.withOpacity(0.25);
  static final Color outlineSuccess =
      SmartColors.success.shade500.withOpacity(0.25);
  static final Color outlineInfo = SmartColors.info.shade500.withOpacity(0.25);
  static final Color outlineWarning =
      SmartColors.warning.shade500.withOpacity(0.25);
  static final Color outlineGray = SmartColors.gray.shade500.withOpacity(0.25);

  static final Color outlinePrimaryDark =
      SmartColors.primary.shade300.withOpacity(0.25);
  static final Color outlineSecondaryDark =
      SmartColors.secondary.shade300.withOpacity(0.25);
  static final Color outlineErrorDark =
      SmartColors.error.shade300.withOpacity(0.25);
  static final Color outlineSuccessDark =
      SmartColors.success.shade300.withOpacity(0.25);
  static final Color outlineInfoDark =
      SmartColors.info.shade300.withOpacity(0.25);
  static final Color outlineWarningDark =
      SmartColors.warning.shade300.withOpacity(0.25);
  static final Color outlineGrayDark =
      SmartColors.gray.shade300.withOpacity(0.25);

  static final Color textMain = SmartColors.gray.shade700;
  static final Color textSubtle = SmartColors.gray.shade500;
  static final Color textStrong = SmartColors.gray.shade900;
  static final Color textDisabled = SmartColors.gray.shade400;
  static final Color textInverse = SmartColors.gray[0]!;
  static final Color iconMain = SmartColors.gray.shade700;
  static final Color iconSubtle = SmartColors.gray.shade500;
  static final Color iconStrong = SmartColors.gray.shade900;
  static final Color iconDisabled = SmartColors.gray.shade400;
  static final Color iconInverse = SmartColors.gray[0]!;

  static final Color bgMainDark = SmartColors.gray.shade900;
  static final Color bgSubtleDark = SmartColors.gray.shade800;
  static final Color bgStrongDark = SmartColors.gray.shade700;
  static final Color bgWhiteDark = SmartColors.gray.shade900;
  static final Color bgInverseDark = SmartColors.gray[0]!;
  static final Color textMainDark = SmartColors.gray.shade100;
  static final Color textSubtleDark = SmartColors.gray.shade400;
  static final Color textStrongDark = SmartColors.gray[0]!;
  static final Color textDisabledDark = SmartColors.gray.shade500;
  static final Color textInverseDark = SmartColors.gray.shade900;
  static final Color iconMainDark = SmartColors.gray.shade100;
  static final Color iconSubtleDark = SmartColors.gray.shade400;
  static final Color iconStrongDark = SmartColors.gray[0]!;
  static final Color iconDisabledDark = SmartColors.gray.shade500;
  static final Color iconInverseDark = SmartColors.gray.shade900;

  static final Color textPrimary = SmartColors.primary.shade500;
  static final Color textSecondary = SmartColors.secondary.shade500;
  static final Color textError = SmartColors.error.shade500;
  static final Color textSuccess = SmartColors.success.shade500;
  static final Color textInfo = SmartColors.info.shade500;
  static final Color textWarning = SmartColors.warning.shade500;
  static final Color textGray = SmartColors.gray.shade800;
  static final Color textPrimaryDark = SmartColors.primary.shade400;
  static final Color textSecondaryDark = SmartColors.secondary.shade400;
  static final Color textErrorDark = SmartColors.error.shade400;
  static final Color textSuccessDark = SmartColors.success.shade400;
  static final Color textInfoDark = SmartColors.info.shade400;
  static final Color textWarningDark = SmartColors.warning.shade400;
  static final Color textGrayDark = SmartColors.gray.shade400;

  static final Color iconPrimary = SmartColors.primary.shade500;
  static final Color iconSecondary = SmartColors.secondary.shade500;
  static final Color iconError = SmartColors.error.shade500;
  static final Color iconSuccess = SmartColors.success.shade500;
  static final Color iconInfo = SmartColors.info.shade500;
  static final Color iconWarning = SmartColors.warning.shade500;
  static final Color iconGray = SmartColors.gray.shade800;
  static final Color iconPrimaryDark = SmartColors.primary.shade400;
  static final Color iconSecondaryDark = SmartColors.secondary.shade400;
  static final Color iconErrorDark = SmartColors.error.shade400;
  static final Color iconSuccessDark = SmartColors.success.shade400;
  static final Color iconInfoDark = SmartColors.info.shade400;
  static final Color iconWarningDark = SmartColors.warning.shade400;
  static final Color iconGrayDark = SmartColors.gray.shade400;

  static final Color overlay = Colors.black.withOpacity(0.25);
  static final Color overlayDark = Colors.black.withOpacity(0.75);
}
