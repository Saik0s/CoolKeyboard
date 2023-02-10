import Foundation
import UIKit

let allLayouts: [KeyboardLayout] = [
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝐪", "𝐰", "𝐞", "𝐫", "𝐭", "𝐲", "𝐮", "𝐢", "𝐨", "𝐩"],
      secondRow: ["𝐚", "𝐬", "𝐝", "𝐟", "𝐠", "𝐡", "𝐣", "𝐤", "𝐥"],
      thirdRow: ["𝐳", "𝐱", "𝐜", "𝐯", "𝐛", "𝐧", "𝐦"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝐐", "𝐖", "𝐄", "𝐑", "𝐓", "𝐘", "𝐔", "𝐈", "𝐎", "𝐏"],
      secondRow: ["𝐀", "𝐒", "𝐃", "𝐅", "𝐆", "𝐇", "𝐉", "𝐊", "𝐋"],
      thirdRow: ["𝐙", "𝐗", "𝐂", "𝐕", "𝐁", "𝐍", "𝐌"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝘲", "𝘸", "𝘦", "𝘳", "𝘵", "𝘺", "𝘶", "𝘪", "𝘰", "𝘱"],
      secondRow: ["𝘢", "𝘴", "𝘥", "𝘧", "𝘨", "𝘩", "𝘫", "𝘬", "𝘭"],
      thirdRow: ["𝘻", "𝘹", "𝘤", "𝘷", "𝘣", "𝘯", "𝘮"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝘘", "𝘞", "𝘌", "𝘙", "𝘛", "𝘠", "𝘜", "𝘐", "𝘖", "𝘗"],
      secondRow: ["𝘈", "𝘚", "𝘋", "𝘍", "𝘎", "𝘏", "𝘑", "𝘒", "𝘓"],
      thirdRow: ["𝘡", "𝘟", "𝘊", "𝘝", "𝘉", "𝘕", "𝘔"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝙦", "𝙬", "𝙚", "𝙧", "𝙩", "𝙮", "𝙪", "𝙞", "𝙤", "𝙥"],
      secondRow: ["𝙖", "𝙨", "𝙙", "𝙛", "𝙜", "𝙝", "𝙟", "𝙠", "𝙡"],
      thirdRow: ["𝙯", "𝙭", "𝙘", "𝙫", "𝙗", "𝙣", "𝙢"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝙌", "𝙒", "𝙀", "𝙍", "𝙏", "𝙔", "𝙐", "𝙄", "𝙊", "𝙋"],
      secondRow: ["𝘼", "𝙎", "𝘿", "𝙁", "𝙂", "𝙃", "𝙅", "𝙆", "𝙇"],
      thirdRow: ["𝙕", "𝙓", "𝘾", "𝙑", "𝘽", "𝙉", "𝙈"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝚚", "𝚠", "𝚎", "𝚛", "𝚝", "𝚢", "𝚞", "𝚒", "𝚘", "𝚙"],
      secondRow: ["𝚊", "𝚜", "𝚍", "𝚏", "𝚐", "𝚑", "𝚓", "𝚔", "𝚕"],
      thirdRow: ["𝚣", "𝚡", "𝚌", "𝚟", "𝚋", "𝚗", "𝚖"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝚀", "𝚆", "𝙴", "𝚁", "𝚃", "𝚈", "𝚄", "𝙸", "𝙾", "𝙿"],
      secondRow: ["𝙰", "𝚂", "𝙳", "𝙵", "𝙶", "𝙷", "𝙹", "𝙺", "𝙻"],
      thirdRow: ["𝚉", "𝚇", "𝙲", "𝚅", "𝙱", "𝙽", "𝙼"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝕢", "𝕨", "𝕖", "𝕣", "𝕥", "𝕪", "𝕦", "𝕚", "𝕠", "𝕡"],
      secondRow: ["𝕒", "𝕤", "𝕕", "𝕗", "𝕘", "𝕙", "𝕛", "𝕜", "𝕝"],
      thirdRow: ["𝕫", "𝕩", "𝕔", "𝕧", "𝕓", "𝕟", "𝕞"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ℚ", "𝕎", "𝔼", "ℝ", "𝕋", "𝕐", "𝕌", "𝕀", "𝕆", "ℙ"],
      secondRow: ["𝔸", "𝕊", "𝔻", "𝔽", "𝔾", "ℍ", "𝕁", "𝕂", "𝕃"],
      thirdRow: ["ℤ", "𝕏", "ℂ", "𝕍", "𝔹", "ℕ", "𝕄"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ⓠ", "ⓦ", "ⓔ", "ⓡ", "ⓣ", "ⓨ", "ⓤ", "ⓘ", "ⓞ", "ⓟ"],
      secondRow: ["ⓐ", "ⓢ", "ⓓ", "ⓕ", "ⓖ", "ⓗ", "ⓙ", "ⓚ", "ⓛ"],
      thirdRow: ["ⓩ", "ⓧ", "ⓒ", "ⓥ", "ⓑ", "ⓝ", "ⓜ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ⓠ", "Ⓦ", "Ⓔ", "Ⓡ", "Ⓣ", "Ⓨ", "Ⓤ", "Ⓘ", "Ⓞ", "Ⓟ"],
      secondRow: ["Ⓐ", "Ⓢ", "Ⓓ", "Ⓕ", "Ⓖ", "Ⓗ", "Ⓙ", "Ⓚ", "Ⓛ"],
      thirdRow: ["Ⓩ", "Ⓧ", "Ⓒ", "Ⓥ", "Ⓑ", "Ⓝ", "Ⓜ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝔮", "𝔴", "𝔢", "𝔯", "𝔱", "𝔶", "𝔲", "𝔦", "𝔬", "𝔭"],
      secondRow: ["𝔞", "𝔰", "𝔡", "𝔣", "𝔤", "𝔥", "𝔧", "𝔨", "𝔩"],
      thirdRow: ["𝔷", "𝔵", "𝔠", "𝔳", "𝔟", "𝔫", "𝔪"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝔔", "𝔚", "𝔈", "ℜ", "𝔗", "𝔜", "𝔘", "ℑ", "𝔒", "𝔓"],
      secondRow: ["𝔄", "𝔖", "𝔇", "𝔉", "𝔊", "ℌ", "𝔍", "𝔎", "𝔏"],
      thirdRow: ["ℨ", "𝔛", "ℭ", "𝔙", "𝔅", "𝔑", "𝔐"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝖖", "𝖜", "𝖊", "𝖗", "𝖙", "𝖞", "𝖚", "𝖎", "𝖔", "𝖕"],
      secondRow: ["𝖆", "𝖘", "𝖉", "𝖋", "𝖌", "𝖍", "𝖏", "𝖐", "𝖑"],
      thirdRow: ["𝖟", "𝖝", "𝖈", "𝖛", "𝖇", "𝖓", "𝖒"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝕼", "𝖂", "𝕰", "𝕽", "𝕿", "𝖄", "𝖀", "𝕴", "𝕺", "𝕻"],
      secondRow: ["𝕬", "𝕾", "𝕯", "𝕱", "𝕲", "𝕳", "𝕵", "𝕶", "𝕷"],
      thirdRow: ["𝖅", "𝖃", "𝕮", "𝖁", "𝕭", "𝕹", "𝕸"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ǫ", "ᴡ", "ᴇ", "ʀ", "ᴛ", "ʏ", "ᴜ", "ɪ", "ᴏ", "ᴘ"],
      secondRow: ["ᴀ", "s", "ᴅ", "ғ", "ɢ", "ʜ", "ᴊ", "ᴋ", "ʟ"],
      thirdRow: ["ᴢ", "x", "ᴄ", "ᴠ", "ʙ", "ɴ", "ᴍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ǫ", "ᴡ", "ᴇ", "ʀ", "ᴛ", "ʏ", "ᴜ", "ɪ", "ᴏ", "ᴘ"],
      secondRow: ["ᴀ", "s", "ᴅ", "ғ", "ɢ", "ʜ", "ᴊ", "ᴋ", "ʟ"],
      thirdRow: ["ᴢ", "x", "ᴄ", "ᴠ", "ʙ", "ɴ", "ᴍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Q", "₩", "Ɇ", "Ɽ", "₮", "Ɏ", "Ʉ", "ł", "Ø", "₱"],
      secondRow: ["₳", "₴", "Đ", "₣", "₲", "Ⱨ", "J", "₭", "Ⱡ"],
      thirdRow: ["Ⱬ", "Ӿ", "₵", "V", "฿", "₦", "₥"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q", "₩", "Ɇ", "Ɽ", "₮", "Ɏ", "Ʉ", "ł", "Ø", "₱"],
      secondRow: ["₳", "₴", "Đ", "₣", "₲", "Ⱨ", "J", "₭", "Ⱡ"],
      thirdRow: ["Ⱬ", "Ӿ", "₵", "V", "฿", "₦", "₥"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᧁ", "᭙", "ꫀ", "ꪹ", "ᡶ", "ꪗ", "ꪊ", "ỉ", "ꪮ", "ᩏ"],
      secondRow: ["ꪖ", "క", "ᦔ", "ᠻ", "ᦋ", "ꫝ", "᧒", "ƙ", "ꪶ"],
      thirdRow: ["ɀ", "᥊", "ᨶ", "ꪜ", "ꪉ", "᭢", "ꪑ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᧁ", "᭙", "ꫀ", "ꪹ", "ᡶ", "ꪗ", "ꪊ", "ỉ", "ꪮ", "ᩏ"],
      secondRow: ["ꪖ", "క", "ᦔ", "ᠻ", "ᦋ", "ꫝ", "᧒", "ƙ", "ꪶ"],
      thirdRow: ["ɀ", "᥊", "ᨶ", "ꪜ", "ꪉ", "᭢", "ꪑ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q", "ω", "є", "я", "т", "у", "υ", "ι", "σ", "ρ"],
      secondRow: ["α", "ѕ", "∂", "f", "g", "н", "נ", "к", "ℓ"],
      thirdRow: ["z", "χ", "¢", "ν", "в", "и", "м"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["q", "ω", "є", "я", "т", "у", "υ", "ι", "σ", "ρ"],
      secondRow: ["α", "ѕ", "∂", "f", "g", "н", "נ", "к", "ℓ"],
      thirdRow: ["z", "χ", "¢", "ν", "в", "и", "м"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ф", "щ", "ё", "я", "т", "ч", "ц", "ї", "ѳ", "p"],
      secondRow: ["а", "$", "д", "f", "g", "н", "j", "к", "г"],
      thirdRow: ["з", "ж", "c", "ѵ", "б", "п", "ѫ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ф", "Ш", "Є", "Я", "T", "Ч", "Ц", "Ї", "Ѳ", "P"],
      secondRow: ["А", "$", "Д", "F", "G", "H", "J", "К", "Г"],
      thirdRow: ["З", "Ж", "C", "Ѵ", "Б", "Й", "Ѫ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ɋ", "ᗯ", "ᗴ", "ᖇ", "丅", "Ƴ", "ᑌ", "I", "ᗝ", "ᑭ"],
      secondRow: ["ᗩ", "ᔕ", "ᗪ", "ᖴ", "Ǥ", "ᕼ", "ᒎ", "ᛕ", "ᒪ"],
      thirdRow: ["乙", "᙭", "ᑕ", "ᐯ", "ᗷ", "ᑎ", "ᗰ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ɋ", "ᗯ", "ᗴ", "ᖇ", "丅", "Ƴ", "ᑌ", "I", "ᗝ", "ᑭ"],
      secondRow: ["ᗩ", "ᔕ", "ᗪ", "ᖴ", "Ǥ", "ᕼ", "ᒎ", "ᛕ", "ᒪ"],
      thirdRow: ["乙", "᙭", "ᑕ", "ᐯ", "ᗷ", "ᑎ", "ᗰ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ҩ", "山", "乇", "尺", "ㄒ", "ㄚ", "ㄩ", "丨", "ㄖ", "卩"],
      secondRow: ["卂", "丂", "ᗪ", "千", "Ꮆ", "卄", "ﾌ", "Ҝ", "ㄥ"],
      thirdRow: ["乙", "乂", "匚", "ᐯ", "乃", "几", "爪"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ҩ", "山", "乇", "尺", "ㄒ", "ㄚ", "ㄩ", "丨", "ㄖ", "卩"],
      secondRow: ["卂", "丂", "ᗪ", "千", "Ꮆ", "卄", "ﾌ", "Ҝ", "ㄥ"],
      thirdRow: ["乙", "乂", "匚", "ᐯ", "乃", "几", "爪"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["🅠", "🅦", "🅔", "🅡", "🅣", "🅨", "🅤", "🅘", "🅞", "🅟"],
      secondRow: ["🅐", "🅢", "🅓", "🅕", "🅖", "🅗", "🅙", "🅚", "🅛"],
      thirdRow: ["🅩", "🅧", "🅒", "🅥", "🅑", "🅝", "🅜"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["🅠", "🅦", "🅔", "🅡", "🅣", "🅨", "🅤", "🅘", "🅞", "🅟"],
      secondRow: ["🅐", "🅢", "🅓", "🅕", "🅖", "🅗", "🅙", "🅚", "🅛"],
      thirdRow: ["🅩", "🅧", "🅒", "🅥", "🅑", "🅝", "🅜"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["🆀", "🆆", "🅴", "🆁", "🆃", "🆈", "🆄", "🅸", "🅾", "🅿"],
      secondRow: ["🅰", "🆂", "🅳", "🅵", "🅶", "🅷", "🅹", "🅺", "🅻"],
      thirdRow: ["🆉", "🆇", "🅲", "🆅", "🅱", "🅽", "🅼"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["🆀", "🆆", "🅴", "🆁", "🆃", "🆈", "🆄", "🅸", "🅾", "🅿"],
      secondRow: ["🅰", "🆂", "🅳", "🅵", "🅶", "🅷", "🅹", "🅺", "🅻"],
      thirdRow: ["🆉", "🆇", "🅲", "🆅", "🅱", "🅽", "🅼"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝓺", "𝔀", "𝓮", "𝓻", "𝓽", "𝔂", "𝓾", "𝓲", "𝓸", "𝓹"],
      secondRow: ["𝓪", "𝓼", "𝓭", "𝓯", "𝓰", "𝓱", "𝓳", "𝓴", "𝓵"],
      thirdRow: ["𝔃", "𝔁", "𝓬", "𝓿", "𝓫", "𝓷", "𝓶"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝓠", "𝓦", "𝓔", "𝓡", "𝓣", "𝓨", "𝓤", "𝓘", "𝓞", "𝓟"],
      secondRow: ["𝓐", "𝓢", "𝓓", "𝓕", "𝓖", "𝓗", "𝓙", "𝓚", "𝓛"],
      thirdRow: ["𝓩", "𝓧", "𝓒", "𝓥", "𝓑", "𝓝", "𝓜"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𝓆", "𝓌", "𝑒", "𝓇", "𝓉", "𝓎", "𝓊", "𝒾", "𝑜", "𝓅"],
      secondRow: ["𝒶", "𝓈", "𝒹", "𝒻", "𝑔", "𝒽", "𝒿", "𝓀", "𝓁"],
      thirdRow: ["𝓏", "𝓍", "𝒸", "𝓋", "𝒷", "𝓃", "𝓂"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𝒬", "𝒲", "ℰ", "ℛ", "𝒯", "𝒴", "𝒰", "ℐ", "𝒪", "𝒫"],
      secondRow: ["𝒜", "𝒮", "𝒟", "ℱ", "𝒢", "ℋ", "𝒥", "𝒦", "ℒ"],
      thirdRow: ["𝒵", "𝒳", "𝒞", "𝒱", "ℬ", "𝒩", "ℳ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ϙ", "ɯ", "ҽ", "ɾ", "ƚ", "ყ", "υ", "ι", "σ", "ρ"],
      secondRow: ["α", "ʂ", "ԃ", "ϝ", "ɠ", "ԋ", "ʝ", "ƙ", "ʅ"],
      thirdRow: ["ȥ", "x", "ƈ", "ʋ", "Ⴆ", "ɳ", "ɱ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ϙ", "ɯ", "ҽ", "ɾ", "ƚ", "ყ", "υ", "ι", "σ", "ρ"],
      secondRow: ["α", "ʂ", "ԃ", "ϝ", "ɠ", "ԋ", "ʝ", "ƙ", "ʅ"],
      thirdRow: ["ȥ", "x", "ƈ", "ʋ", "Ⴆ", "ɳ", "ɱ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᵠ", "ω", "€", "☈", "†", "⚧", "☋", "♗", "⊙", "ρ"],
      secondRow: ["ꍏ", "∫", "ᕲ", "Ϝ", "❡", "♄", "♪", "ϰ", "↳"],
      thirdRow: ["☡", "⌘", "☾", "✓", "♭", "♫", "ᗰ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᵠ", "ω", "€", "☈", "†", "⚧", "☋", "♗", "⊙", "ρ"],
      secondRow: ["ꍏ", "∫", "ᕲ", "Ϝ", "❡", "♄", "♪", "ϰ", "↳"],
      thirdRow: ["☡", "⌘", "☾", "✓", "♭", "♫", "ᗰ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ɛ", "ʀ", "ȶ", "ʏ", "ʊ", "ɨ", "օ", "ք"],
      secondRow: ["ǟ", "ֆ", "ɖ", "ʄ", "ɢ", "ɦ", "ʝ", "ӄ", "ʟ"],
      thirdRow: ["ʐ", "Ӽ", "ƈ", "ʋ", "ɮ", "ռ", "ʍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ɛ", "ʀ", "ȶ", "ʏ", "ʊ", "ɨ", "օ", "ք"],
      secondRow: ["ǟ", "ֆ", "ɖ", "ʄ", "ɢ", "ɦ", "ʝ", "ӄ", "ʟ"],
      thirdRow: ["ʐ", "Ӽ", "ƈ", "ʋ", "ɮ", "ռ", "ʍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᵠ", "ʷ", "ᵉ", "ʳ", "ᵗ", "ʸ", "ᵘ", "ⁱ", "ᵒ", "ᵖ"],
      secondRow: ["ᵃ", "ˢ", "ᵈ", "ᶠ", "ᵍ", "ʰ", "ʲ", "ᵏ", "ˡ"],
      thirdRow: ["ᶻ", "ˣ", "ᶜ", "ᵛ", "ᵇ", "ⁿ", "ᵐ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᵠ", "ʷ", "ᵉ", "ʳ", "ᵗ", "ʸ", "ᵘ", "ⁱ", "ᵒ", "ᵖ"],
      secondRow: ["ᵃ", "ˢ", "ᵈ", "ᶠ", "ᵍ", "ʰ", "ʲ", "ᵏ", "ˡ"],
      thirdRow: ["ᶻ", "ˣ", "ᶜ", "ᵛ", "ᵇ", "ⁿ", "ᵐ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q͈͈͚͑ͫ̉ͤ͟", "w̡̻̻̣͚̒̀ͅ", "ḛ̡̰̳͓̥ͬ͋ͪͧ", "ṛ̣̬̫̍͌ͩ͟", "t͖͖̠̬͛", "y͙͙̪̰ͫ͌́", "ụ̴̴̾̀͟͡", "i̧̻̻͉̜͑ͪ̾͟", "o͙͙̙̘̙ͤͫ͞", "p͔͔͚͉̬̋ͩ̾͗"],
      secondRow: ["a͔͔̜̗̦ͩ̅̎", "s̨̞̞̰͎͎̪̩͕̈́̀ͯ̍ͧͅ", "d̶̵̯̯̼̘ͨ̓", "f̰̰̯͕͊̃̊͞͞͞", "g̬̬̱ͩ͋͟͟", "h̨͚͚͖ͯ̒̄͗͞", "j̺̺̭͖̘̬̃̓ͨ", "k̼̼̞̦̞̼̔", "l͖͖̰̝ͭ̀͘"],
      thirdRow: ["z̰̰̝̿ͣ͝͡͝", "x͕͕͚͍̿̆͂͞", "c̨̨̣̮̝̈́̔ͯ̀͂", "v̹̹̘̼̞̻͆ͩ̓ͪ͢", "b͔͔̳͈̊̆ͥ͂͜͝", "n̫̫̘̗͕̲̲̎ͥ", "m̰̰̹͚̙̂ͦ͗͠"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q̧̧̧̛͈̤̻̾̃͛", "W̧̤̤͇̣̥͂͐", "E̢̢̻ͮͧͦ͋͞͡", "R̛̦̦̝̤͌̏͜͟͜", "T̼̼̖̾͟͞", "Y̧̬̬͇̖̳̏͌͞", "U̝̝̝̲̦ͣ͋͛̊", "I̡̨͙͙̪̹̾͟", "Ơ̷̴̪̪̝͈̥͈̆̀̚", "P̤̤͖ͪ͑̕͜͜"],
      secondRow: ["A̳̳̹̟̋ͣ͌ͅ", "S̢̼̼͖̺͖ͪ", "D̷̨̥̥̥͖̞͐ͮ̄", "F̼̼͓̙ͤ̋̅̚͞͞", "G̯̯̩̙͆ͣ͟", "H͇͇̹͊ͪ́̕ͅ", "J̸̡̡̟͑ͭ̄͘", "K̭̭͔͓̦̏̎͠", "Ļ͓͓̣̽͟"],
      thirdRow: ["Z̼̼̙͐̐̅͌", "X̨̯̯͎̥͊̄̊͡͡ͅ", "C͖͖̮̗̗͉̔̓ͧͨ", "V̵̡͔͔͔̭̾̀̂̑͞", "B̛̙̙͉̬̦̻̾͛̕͟", "N͔͔̥̺̞̿͊̇", "M͚͚̻͂̇͜͟͟"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ｑ", "ｗ", "ｅ", "ｒ", "ｔ", "ｙ", "ｕ", "ｉ", "ｏ", "ｐ"],
      secondRow: ["ａ", "ｓ", "ｄ", "ｆ", "ｇ", "ｈ", "ｊ", "ｋ", "ｌ"],
      thirdRow: ["ｚ", "ｘ", "ｃ", "ｖ", "ｂ", "ｎ", "ｍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ｑ", "Ｗ", "Ｅ", "Ｒ", "Ｔ", "Ｙ", "Ｕ", "Ｉ", "Ｏ", "Ｐ"],
      secondRow: ["Ａ", "Ｓ", "Ｄ", "Ｆ", "Ｇ", "Ｈ", "Ｊ", "Ｋ", "Ｌ"],
      thirdRow: ["Ｚ", "Ｘ", "Ｃ", "Ｖ", "Ｂ", "Ｎ", "Ｍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q̾", "w𞀞", "eͤ", "rͬ", "tͭ", "y̾", "uͧ", "iͥ", "oͦ", "p𞀐"],
      secondRow: ["aͣ", "s̾", "dͩ", "f̾", "g̾", "hͪ", "j̾", "k̾", "l̾"],
      thirdRow: ["z̾", "xͯ", "cͨ", "v̾", "b𞀓", "n̾", "mͫ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q̾", "W𞀞", "Eͤ", "Rͬ", "Tͭ", "Y̾", "Uͧ", "Iͥ", "Oͦ", "P𞀐"],
      secondRow: ["Aͣ", "S̾", "Dͩ", "F̾", "G̾", "Hͪ", "J̾", "K̾", "L̾"],
      thirdRow: ["Z̾", "Xͯ", "Cͨ", "V̾", "B𞀓", "N̾", "Mͫ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q̷̝ͣ͑̌͢", "ẅ̷̷̢̟͇͈̒", "ę̷̵̧̖̫̗̆̊", "r̶̷̲͍̭͐̾̀͟", "t̴͕͖͓̀", "y̯̤͑́́̓́", "û̶͙̽̿͆̈", "i̵͓͙̱͚̎͟", "ȍ̸̢̢̮͚̐̚", "p̶̸̨̺͊̍̒̓̀"],
      secondRow: ["ă̶̸̝ͦ͊̿͋͞", "s̩͙͖̋͛͟", "d̸̡̩͍̔ͥ͜", "f̷̵̫̞̉͢", "g̴̶̛̮̣͙͠", "h̶̯̰̝̻̿̓͢", "j̧͉̺̤̎ͯ", "k̶̸͙̭̹͆͟", "ḻ̸͈ͧ͑̓̓̀͡"],
      thirdRow: ["z͕͓̼̼̽̃͘", "x̷̶͚͖͓̘̔", "c̷̹͖͋́̃", "v̸̵̝͙͆̈ͤ", "b̵̸͙̅̽͡ͅ", "n̷̶̯͉̊̽̐ͦ͘", "m̶̷͔ͪ̽͡"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q̸̨͉̰̰ͬ", "W̸͈ͯ̾̒̿", "E̸̖̪̱͚ͨ̀͜", "Ŗ̴̪̈̄͞", "T̷̫͉̰͕̒́", "Y̵̷̛̤͍̅́̕", "U̸̫̠̰͈̕", "I̶̴̗̗̦͍ͨͭ̉͢͟", "O̵̷̪̰ͩ͆ͅ", "P̘͎̀͊"],
      secondRow: ["Ȧ̶̵̗̳", "S̵̶̮̬͖̄͑͟", "Ḋ̤͇̮͙ͥ", "F̵̦̺͕́̐͟", "G̛͔͇̞̹̈̀͘͘͟", "H̶̪͍̒ͥ͑̓", "J̸̧̪̫̫̩̿͗͑̇̕͟", "K̦̖̙̱̮̐̌", "L̳͈͉̅̊"],
      thirdRow: ["Z̴̨͇͖͓̋̊", "X̸̵̨ͦ̒ͣ", "C̸̣̭͖̤̒̈͊͟", "V̷̬̈ͫ͢͢͝", "B̟̈́̆̐̄̚͜", "N̰̜͉͔ͬ̽͢", "M̶̷̲̊ͥ͋͟"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["🅀", "🅆", "🄴", "🅁", "🅃", "🅈", "🅄", "🄸", "🄾", "🄿"],
      secondRow: ["🄰", "🅂", "🄳", "🄵", "🄶", "🄷", "🄹", "🄺", "🄻"],
      thirdRow: ["🅉", "🅇", "🄲", "🅅", "🄱", "🄽", "🄼"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["🅀", "🅆", "🄴", "🅁", "🅃", "🅈", "🅄", "🄸", "🄾", "🄿"],
      secondRow: ["🄰", "🅂", "🄳", "🄵", "🄶", "🄷", "🄹", "🄺", "🄻"],
      thirdRow: ["🅉", "🅇", "🄲", "🅅", "🄱", "🄽", "🄼"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["b", "ʍ", "ǝ", "ɹ", "ʇ", "ʎ", "n", "ı", "o", "d"],
      secondRow: ["ɐ", "s", "p", "ɟ", "ƃ", "ɥ", "ɾ", "ʞ", "l"],
      thirdRow: ["z", "x", "ɔ", "ʌ", "q", "u", "ɯ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["b", "ʍ", "ǝ", "ɹ", "ʇ", "ʎ", "n", "ı", "o", "d"],
      secondRow: ["ɐ", "s", "p", "ɟ", "ƃ", "ɥ", "ɾ", "ʞ", "l"],
      thirdRow: ["z", "x", "ɔ", "ʌ", "q", "u", "ɯ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q͏", "w͏", "e͏", "r͏", "t͏", "y͏", "u͏", "i͏", "o͏", "p͏"],
      secondRow: ["a͏", "s͏", "d͏", "f͏", "g͏", "h͏", "j͏", "k͏", "l͏"],
      thirdRow: ["z͏", "x͏", "c͏", "v͏", "b͏", "n͏", "m͏"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q͏", "W͏", "E͏", "R͏", "T͏", "Y͏", "U͏", "I͏", "O͏", "P͏"],
      secondRow: ["A͏", "S͏", "D͏", "F͏", "G͏", "H͏", "J͏", "K͏", "L͏"],
      thirdRow: ["Z͏", "X͏", "C͏", "V͏", "B͏", "N͏", "M͏"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ϙ", "ᴡ", "ᴇ", "ʀ", "ᴛ", "ʏ", "ᴜ", "ɪ", "ᴏ", "ᴘ"],
      secondRow: ["ᴀ", "ᴤ", "ᴅ", "ғ", "ɢ", "ʜ", "ᴊ", "ᴋ", "ʟ"],
      thirdRow: ["ᴢ", "x", "ᴄ", "ᴠ", "ʙ", "ɴ", "ᴍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ϙ", "ᴡ", "ᴇ", "ʀ", "ᴛ", "ʏ", "ᴜ", "ɪ", "ᴏ", "ᴘ"],
      secondRow: ["ᴀ", "ᴤ", "ᴅ", "ғ", "ɢ", "ʜ", "ᴊ", "ᴋ", "ʟ"],
      thirdRow: ["ᴢ", "x", "ᴄ", "ᴠ", "ʙ", "ɴ", "ᴍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q", "w", "3", "r", "7", "y", "u", "!", "0", "p"],
      secondRow: ["4", "5", "d", "f", "9", "h", "j", "k", "1"],
      thirdRow: ["2", "x", "(", "v", "8", "n", "m"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q", "W", "3", "R", "7", "Y", "U", "!", "0", "P"],
      secondRow: ["4", "5", "D", "F", "9", "H", "J", "K", "1"],
      thirdRow: ["2", "X", "(", "V", "8", "N", "M"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q҉̧͚̰̾͋͢͟͝͡", "w҉̢̡̹̮͌̄ͦ͜͟͟͞͠͞", "e̵̡̫̫͍͕̎ͭ̐͟͟͝͞", "r҉̵҉̛̠̩̥̋ͦ̆͆͟͞͡͞͠", "t҉̷҉̢͖͔̹͛̌͊͘͜͢͠͡͡", "ȳ̸̵̩̜͔͍̔́͟͟͢͡", "u̶͖̖͆̊̈́͡͡", "i҉̧̯̤̙͔̑ͧ̅̔ͦ́͜͟͢͝͠", "o҉̢̡̲͇̌͗̀͢͝", "p̷̸̷̨͙͙͇ͨ̌ͣ͋͟͢͠"],
      secondRow: ["a҉͖̟̜̞̂̃̑̽͢͢͠͡", "s҉̝̭̦͚̑ͯ̌͡", "d҉̴̷̧̢̛̖͔̤ͯ̔̑̄͢͟͡͠", "f҉̴̥͎̰̰̒͌͛͐ͧ̕͜͝͡͞", "g̷̵̸̡̼̱͎͎̞ͤͬ̅͢͟͞", "h̷̶̘̘̬ͭ̏͞͡", "ǰ̸̶̭͓͓̀̈́͜͟ͅ", "k҉̴̶̬͈̫̹͖̾̎ͭ́̍̐͜͜͝͠", "l̶҉̰͚͖͕̍̈́̅͗̏̇͢͜͜͝"],
      thirdRow: ["z̷҉̲ͥ͆̿̆ͭ͞", "x҉̣ͫͧ̕͘͜", "c̷̶҉̵̢͚̣̻̲̬͑̑͛͐̀͜͜͜͝͡͝͠", "v҉̨̊͢͠͠", "b҉͙̺̻̥̅̎͋̕͜͝͡͞͠", "n̸͐̈́͟͟͝", "m̴̵҉̸̲̗̰̼͗͌̃̇͟͟͟͠͞͠"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q̵̴̢͕̬̒̅̊͜͜͠͠͡", "W̵̶̸̻̼͉̱̄͗ͭ͟͢͢͠", "E҉̰̰͎̆͞", "R̴҉̷̨̖̮̉͑ͯ̑̋͟͠", "T҉̘͙͖̠̓ͦ͑̄͜͜͟͞", "Y̵̡̬͖̠̋ͫ̌ͤ̚͞͞", "U̵̶̸̹̮̹̲̻͙̎ͪͣͦ͜͡͞͡͡", "I҉̡̯̺̜̅́͋̃͢͜", "O̷̵҉̢̭͚̜̠ͫͣ͐͢͟͢͠͞͝", "P҉̷̧̥͚̣̉̓̕͟͜͠͞͠͝ͅ"],
      secondRow: ["A҉҉̦̣̤͔̟̩̋̿̏ͦ̈́̍͟͠", "Ṡ̷̢̫̞̻͈͋͛̓̅͜͜͜͠͠͠", "D҉̣͍̓̎͗͜͜", "F̶̵͖͚̯̮̤̫̿̆͌͋͢͟͡͡", "G̸҉̜̜̱̄ͩ͆͜͝͞", "H̴̶̵҉̨̡̛̼͎̫͓̒́̔ͩ͜͟͠͞͞", "J̴̵҉̣͖̃̉̓́͜͢", "K҉̿ͭ͘͜", "L̴҉̴͙͖̞̳̜̖ͣͧ̑̑͜͞͠͞͠"],
      thirdRow: ["Z҉͆͢͠͠", "X̵̶҉̠͉͓̝̾͟͟ͅ", "C҉͓̟͇̼͕̻ͭ͌ͩ̒͘͜͡͞͠", "V̶̝̐̀͟͟͝", "B̵̴҉̞̠̘̩͍̱́͊͗͜͠͠͠͠", "N̵҉̾͟͞͡", "M̶̶҉̳͈̺͟͢͠͠ͅ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𐒉", "Ꮚ", "𐒢", "Ⲅ", "Ꮏ", "𐒍", "𐒜", "Ꭵ", "𐒀", "Ꮅ"],
      secondRow: ["λ", "Ꮄ", "Ꮷ", "Ӻ", "Ⳓ", "𐒅", "Ꮽ", "Ꮵ", "Ꮣ"],
      thirdRow: ["೩", "𐒎", "𐒨", "Ꮙ", "𐒈", "𐒐", "𐒄"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𐒉", "Ꮚ", "𐒢", "Ⲅ", "Ꮏ", "𐒍", "𐒜", "Ꭵ", "𐒀", "Ꮅ"],
      secondRow: ["λ", "Ꮄ", "Ꮷ", "Ӻ", "Ⳓ", "𐒅", "Ꮽ", "Ꮵ", "Ꮣ"],
      thirdRow: ["೩", "𐒎", "𐒨", "Ꮙ", "𐒈", "𐒐", "𐒄"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["𐒛", "Ꮗ", "Ꮛ", "Ⲅ", "Ꮦ", "Ꮍ", "𐒜", "𐒃", "𐒀", "Ꭾ"],
      secondRow: ["Ꮧ", "𐒡", "Ꮝ", "೯", "Ꮾ", "𐒅", "Ⴐ", "Ꮵ", "Ⴑ"],
      thirdRow: ["೩", "𐒓", "Ꮳ", "Ꮙ", "𐒈", "𐒐", "𐒄"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["𐒛", "Ꮗ", "Ꮛ", "Ⲅ", "Ꮦ", "Ꮍ", "𐒜", "𐒃", "𐒀", "Ꭾ"],
      secondRow: ["Ꮧ", "𐒡", "Ꮝ", "೯", "Ꮾ", "𐒅", "Ⴐ", "Ꮵ", "Ⴑ"],
      thirdRow: ["೩", "𐒓", "Ꮳ", "Ꮙ", "𐒈", "𐒐", "𐒄"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮦ", "Ꮍ", "Ꮼ", "Ꭵ", "Ꭷ", "Ꭾ"],
      secondRow: ["Ꮧ", "Ꮥ", "Ꮄ", "Ӻ", "Ꮆ", "Ꮒ", "Ꮰ", "Ꮶ", "Ꮭ"],
      thirdRow: ["೭", "೫", "Ꮯ", "Ꮙ", "Ᏸ", "Ꮑ", "Ꮇ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮦ", "Ꮍ", "Ꮼ", "Ꭵ", "Ꭷ", "Ꭾ"],
      secondRow: ["Ꮧ", "Ꮥ", "Ꮄ", "Ӻ", "Ꮆ", "Ꮒ", "Ꮰ", "Ꮶ", "Ꮭ"],
      thirdRow: ["೭", "೫", "Ꮯ", "Ꮙ", "Ᏸ", "Ꮑ", "Ꮇ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮏ", "Ꮍ", "Ꮺ", "Ꭵ", "Ꮻ", "Ꭾ"],
      secondRow: ["Ꭿ", "Ꮄ", "Ꮝ", "೯", "Ⳓ", "Ᏺ", "Ⴐ", "Ꮵ", "Ⴑ"],
      thirdRow: ["೩", "೫", "Ꮯ", "Ꮙ", "Ᏸ", "Ⴖ", "Ꮇ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮏ", "Ꮍ", "Ꮺ", "Ꭵ", "Ꮻ", "Ꭾ"],
      secondRow: ["Ꭿ", "Ꮄ", "Ꮝ", "೯", "Ⳓ", "Ᏺ", "Ⴐ", "Ꮵ", "Ⴑ"],
      thirdRow: ["೩", "೫", "Ꮯ", "Ꮙ", "Ᏸ", "Ⴖ", "Ꮇ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Q", "Ŵ", "Ĕ", "Ŕ", "Ť", "Ŷ", "Ú", "Ĩ", "Ő", "Р"],
      secondRow: ["Ă", "Ś", "Ď", "Ŧ", "Ğ", "Ĥ", "Ĵ", "Ķ", "Ĺ"],
      thirdRow: ["Ź", "Ж", "Č", "V", "β", "Ń", "М"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Q", "Ŵ", "Ĕ", "Ŕ", "Ť", "Ŷ", "Ú", "Ĩ", "Ő", "Р"],
      secondRow: ["Ă", "Ś", "Ď", "Ŧ", "Ğ", "Ĥ", "Ĵ", "Ķ", "Ĺ"],
      thirdRow: ["Ź", "Ж", "Č", "V", "β", "Ń", "М"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮦ", "Ꭹ", "Ꮼ", "Ꭵ", "Ꭷ", "Ꭾ"],
      secondRow: ["Ꮧ", "Ꮥ", "Ꮄ", "Ꭶ", "Ꮆ", "Ꮒ", "Ꮰ", "Ꮶ", "Ꮭ"],
      thirdRow: ["ፚ", "ጀ", "ፈ", "Ꮙ", "Ᏸ", "Ꮑ", "Ꮇ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ꭴ", "Ꮗ", "Ꮛ", "Ꮢ", "Ꮦ", "Ꭹ", "Ꮼ", "Ꭵ", "Ꭷ", "Ꭾ"],
      secondRow: ["Ꮧ", "Ꮥ", "Ꮄ", "Ꭶ", "Ꮆ", "Ꮒ", "Ꮰ", "Ꮶ", "Ꮭ"],
      thirdRow: ["ፚ", "ጀ", "ፈ", "Ꮙ", "Ᏸ", "Ꮑ", "Ꮇ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ω", "Ŵ", "€", "Ř", "Ŧ", "¥", "Ữ", "Ɨ", "Ø", "Ƥ"],
      secondRow: ["Δ", "Ş", "Đ", "₣", "Ǥ", "Ħ", "Ĵ", "Ҝ", "Ł"],
      thirdRow: ["Ž", "Ж", "Ć", "V", "β", "Ň", "Μ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ω", "Ŵ", "€", "Ř", "Ŧ", "¥", "Ữ", "Ɨ", "Ø", "Ƥ"],
      secondRow: ["Δ", "Ş", "Đ", "₣", "Ǥ", "Ħ", "Ĵ", "Ҝ", "Ł"],
      thirdRow: ["Ž", "Ж", "Ć", "V", "β", "Ň", "Μ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["φ", "ω", "ε", "૨", "ƭ", "ყ", "µ", "เ", "σ", "ρ"],
      secondRow: ["α", "ร", "∂", "ƒ", "ɠ", "ɦ", "ʝ", "ҡ", "ℓ"],
      thirdRow: ["ƶ", "א", "૮", "ѵ", "ɓ", "ɳ", "ɱ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["φ", "ω", "ε", "૨", "ƭ", "ყ", "µ", "เ", "σ", "ρ"],
      secondRow: ["α", "ร", "∂", "ƒ", "ɠ", "ɦ", "ʝ", "ҡ", "ℓ"],
      thirdRow: ["ƶ", "א", "૮", "ѵ", "ɓ", "ɳ", "ɱ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["₾", "￦", "€", "₹", "₮", "¥", "Ʉ", "ł", "Ꮻ", "₱"],
      secondRow: ["₳", "$", "Đ", "₣", "₲", "₶", "Ɉ", "₭", "Ł"],
      thirdRow: ["₴", "Ӿ", "₡", "Ṽ", "฿", "₦", "₼"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["₾", "￦", "€", "₹", "₮", "¥", "Ʉ", "ł", "Ꮻ", "₱"],
      secondRow: ["₳", "$", "Đ", "₣", "₲", "₶", "Ɉ", "₭", "Ł"],
      thirdRow: ["₴", "Ӿ", "₡", "Ṽ", "฿", "₦", "₼"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ợ", "ฬ", "є", "г", "t", "ꌦ", "ย", "เ", "๏", "ק"],
      secondRow: ["ค", "ร", "๔", "Ŧ", "ﻮ", "ђ", "ן", "к", "l"],
      thirdRow: ["z", "א", "ς", "ש", "๒", "ภ", "๓"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ợ", "ฬ", "є", "г", "t", "ꌦ", "ย", "เ", "๏", "ק"],
      secondRow: ["ค", "ร", "๔", "Ŧ", "ﻮ", "ђ", "ן", "к", "l"],
      thirdRow: ["z", "א", "ς", "ש", "๒", "ภ", "๓"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ҩ", "ω", "૯", "Ր", "੮", "ყ", "υ", "ɿ", "૦", "ƿ"],
      secondRow: ["ค", "ς", "ძ", "Բ", "૭", "Һ", "ʆ", "қ", "Ն"],
      thirdRow: ["ઽ", "૪", "८", "౮", "ც", "Ո", "ɱ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ҩ", "ω", "૯", "Ր", "੮", "ყ", "υ", "ɿ", "૦", "ƿ"],
      secondRow: ["ค", "ς", "ძ", "Բ", "૭", "Һ", "ʆ", "қ", "Ն"],
      thirdRow: ["ઽ", "૪", "८", "౮", "ც", "Ո", "ɱ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꋟ", "ꅏ", "ꑾ", "ꋪ", "꓅", "ꌥ", "ꌇ", "꒐", "ꄱ", "ꉣ"],
      secondRow: ["ꋫ", "ꇘ", "ꃸ", "ꄘ", "ꁅ", "ꃄ", "꒑", "ꀗ", "꒒"],
      thirdRow: ["꒗", "ꋋ", "ꉓ", "꒦", "ꃲ", "ꁹ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꋟ", "ꅏ", "ꑾ", "ꋪ", "꓅", "ꌥ", "ꌇ", "꒐", "ꄱ", "ꉣ"],
      secondRow: ["ꋫ", "ꇘ", "ꃸ", "ꄘ", "ꁅ", "ꃄ", "꒑", "ꀗ", "꒒"],
      thirdRow: ["꒗", "ꋋ", "ꉓ", "꒦", "ꃲ", "ꁹ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ǭ", "Ψ", "£", "ȑ", "ț", "ÿ", "ɥ", "ȋ", "¤", "ק"],
      secondRow: ["å", "§", "ď", "ƒ", "ğ", "ȟ", "j", "ķ", "Ƚ"],
      thirdRow: ["ž", "×", "ç", "√", "β", "ñ", "ɱ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ǭ", "Ψ", "£", "ȑ", "ț", "ÿ", "ɥ", "ȋ", "¤", "ק"],
      secondRow: ["å", "§", "ď", "ƒ", "ğ", "ȟ", "j", "ķ", "Ƚ"],
      thirdRow: ["ž", "×", "ç", "√", "β", "ñ", "ɱ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ǭ", "ώ", "€", "я", "ţ", "¥", "µ", "ɨ", "๏", "ρ"],
      secondRow: ["ą", "$", "ď", "ƒ", "ǥ", "h", "j", "Ќ", "ℓ"],
      thirdRow: ["ƶ", "ж", "ȼ", "˅", "β", "ɲ", "ʍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ǭ", "ώ", "€", "я", "ţ", "¥", "µ", "ɨ", "๏", "ρ"],
      secondRow: ["ą", "$", "ď", "ƒ", "ǥ", "h", "j", "Ќ", "ℓ"],
      thirdRow: ["ƶ", "ж", "ȼ", "˅", "β", "ɲ", "ʍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["გ", "w", "პ", "Γ", "ན", "ყ", "υ", "ἶ", "õ", "ρ"],
      secondRow: ["მ", "ჰ", "ძ", "f", "ც", "h", "ქ", "κ", "l"],
      thirdRow: ["ɀ", "ჯ", "ე", "ὗ", "ჩ", "ῆ", "ო"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["გ", "w", "პ", "Γ", "ན", "ყ", "υ", "ἶ", "õ", "ρ"],
      secondRow: ["მ", "ჰ", "ძ", "f", "ც", "h", "ქ", "κ", "l"],
      thirdRow: ["ɀ", "ჯ", "ე", "ὗ", "ჩ", "ῆ", "ო"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Ŵ", "Ẹ", "Ř", "Ť", "Ў", "Ǘ", "Į", "Ỗ", "Ƥ"],
      secondRow: ["Ã", "Ŝ", "Ď", "Ƒ", "Ğ", "Ĥ", "Ĵ", "Ќ", "Ĺ"],
      thirdRow: ["Ż", "Ж", "Č", "ϋ", "β", "Ň", "ϻ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Ŵ", "Ẹ", "Ř", "Ť", "Ў", "Ǘ", "Į", "Ỗ", "Ƥ"],
      secondRow: ["Ã", "Ŝ", "Ď", "Ƒ", "Ğ", "Ĥ", "Ĵ", "Ќ", "Ĺ"],
      thirdRow: ["Ż", "Ж", "Č", "ϋ", "β", "Ň", "ϻ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᕴ", "ᙎ", "ᙍ", "ᖇ", "ᖶ", "ᖻ", "ᑗ", "ᓿ", "ᓎ", "ᕿ"],
      secondRow: ["ᗅ", "S", "ᗫ", "ᖴ", "ᘜ", "ᕼ", "ᒙ", "ᖽᐸ", "ᒪ"],
      thirdRow: ["ᙣ", "᙭", "ᑤ", "ᐻ", "ᙘ", "ᘉ", "ᙢ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᕴ", "ᙎ", "ᙍ", "ᖇ", "ᖶ", "ᖻ", "ᑗ", "ᓿ", "ᓎ", "ᕿ"],
      secondRow: ["ᗅ", "S", "ᗫ", "ᖴ", "ᘜ", "ᕼ", "ᒙ", "ᖽᐸ", "ᒪ"],
      thirdRow: ["ᙣ", "᙭", "ᑤ", "ᐻ", "ᙘ", "ᘉ", "ᙢ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅏ", "ꍟ", "ꋪ", "꓄", "ꌩ", "ꀎ", "ꀤ", "ꂦ", "ᖘ"],
      secondRow: ["ꍏ", "ꌗ", "ꀸ", "ꎇ", "ꁅ", "ꃅ", "ꀭ", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꊼ", "ꉓ", "ᐯ", "ꌃ", "ꈤ", "ꎭ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅏ", "ꍟ", "ꋪ", "꓄", "ꌩ", "ꀎ", "ꀤ", "ꂦ", "ᖘ"],
      secondRow: ["ꍏ", "ꌗ", "ꀸ", "ꎇ", "ꁅ", "ꃅ", "ꀭ", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꊼ", "ꉓ", "ᐯ", "ꌃ", "ꈤ", "ꎭ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꋠ", "ꅐ", "ꑀ", "ꌅ", "ꋖ", "ꐔ", "ꌈ", "꒐", "ꊿ", "ꉣ"],
      secondRow: ["ꁲ", "ꈜ", "ꀷ", "ꊯ", "ꁅ", "ꁝ", "꒑", "ꈵ", "꒒"],
      thirdRow: ["ꑒ", "ꉤ", "ꏳ", "꒦", "ꃳ", "ꃔ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꋠ", "ꅐ", "ꑀ", "ꌅ", "ꋖ", "ꐔ", "ꌈ", "꒐", "ꊿ", "ꉣ"],
      secondRow: ["ꁲ", "ꈜ", "ꀷ", "ꊯ", "ꁅ", "ꁝ", "꒑", "ꈵ", "꒒"],
      thirdRow: ["ꑒ", "ꉤ", "ꏳ", "꒦", "ꃳ", "ꃔ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["q", "ώ", "έ", "ŕ", "ţ", "ч", "ù", "ί", "ό", "ρ"],
      secondRow: ["ά", "ş", "ȡ", "ғ", "ģ", "ħ", "ј", "ķ", "Ļ"],
      thirdRow: ["ž", "x", "ς", "ν", "в", "ή", "м"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["q", "ώ", "έ", "ŕ", "ţ", "ч", "ù", "ί", "ό", "ρ"],
      secondRow: ["ά", "ş", "ȡ", "ғ", "ģ", "ħ", "ј", "ķ", "Ļ"],
      thirdRow: ["ž", "x", "ς", "ν", "в", "ή", "м"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꁸ", "ꅐ", "ꍟ", "꒓", "꓅", "ꐟ", "ꐇ", "ꂑ", "ꆂ", "ꉣ"],
      secondRow: ["ꋫ", "ꌚ", "ꁕ", "ꄘ", "ꁍ", "ꑛ", "ꀭ", "ꀗ", "꒒"],
      thirdRow: ["ꁴ", "ꇓ", "ꏸ", "ꏝ", "ꃃ", "ꁹ", "ꁒ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꁸ", "ꅐ", "ꍟ", "꒓", "꓅", "ꐟ", "ꐇ", "ꂑ", "ꆂ", "ꉣ"],
      secondRow: ["ꋫ", "ꌚ", "ꁕ", "ꄘ", "ꁍ", "ꑛ", "ꀭ", "ꀗ", "꒒"],
      thirdRow: ["ꁴ", "ꇓ", "ꏸ", "ꏝ", "ꃃ", "ꁹ", "ꁒ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Ꮤ", "Ǝ", "Я", "✞", "У", "υ", "î", "ø", "ρ"],
      secondRow: ["Д", "Ƨ", "∂", "ƒ", "Ꮆ", "ℍ", "ʝ", "Ƙ", "ℓ"],
      thirdRow: ["Հ", "✘", "ℂ", "ϑ", "Ᏸ", "И", "ℳ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Ꮤ", "Ǝ", "Я", "✞", "У", "υ", "î", "ø", "ρ"],
      secondRow: ["Д", "Ƨ", "∂", "ƒ", "Ꮆ", "ℍ", "ʝ", "Ƙ", "ℓ"],
      thirdRow: ["Հ", "✘", "ℂ", "ϑ", "Ᏸ", "И", "ℳ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Щ", "Ξ", "Я", "Γ", "У", "Ц", "I", "Ф", "P"],
      secondRow: ["Д", "S", "D", "F", "G", "H", "J", "Ҝ", "L"],
      thirdRow: ["Z", "Ж", "C", "V", "Б", "И", "M"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ǫ", "Щ", "Ξ", "Я", "Γ", "У", "Ц", "I", "Ф", "P"],
      secondRow: ["Д", "S", "D", "F", "G", "H", "J", "Ҝ", "L"],
      thirdRow: ["Z", "Ж", "C", "V", "Б", "И", "M"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ɛ", "ʀ", "ƭ", "ʏ", "ʊ", "ɨ", "օ", "ք"],
      secondRow: ["ǟ", "ֆ", "ɖ", "ʄ", "ɢ", "ɦ", "ʝ", "Ꮶ", "ʟ"],
      thirdRow: ["ʐ", "x", "ƈ", "ʋ", "ɮ", "ռ", "ʍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ɛ", "ʀ", "ƭ", "ʏ", "ʊ", "ɨ", "օ", "ք"],
      secondRow: ["ǟ", "ֆ", "ɖ", "ʄ", "ɢ", "ɦ", "ʝ", "Ꮶ", "ʟ"],
      thirdRow: ["ʐ", "x", "ƈ", "ʋ", "ɮ", "ռ", "ʍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ҽ", "ɾ", "Ե", "վ", "մ", "í", "օ", "Թ"],
      secondRow: ["ɑ", "Տ", "ժ", "ƒ", "ց", "հ", "յ", "Ƙ", "Ӏ"],
      thirdRow: ["Հ", "×", "ϲ", "ѵ", "ҍ", "ղ", "ʍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ա", "ҽ", "ɾ", "Ե", "վ", "մ", "í", "օ", "Թ"],
      secondRow: ["ɑ", "Տ", "ժ", "ƒ", "ց", "հ", "յ", "Ƙ", "Ӏ"],
      thirdRow: ["Հ", "×", "ϲ", "ѵ", "ҍ", "ղ", "ʍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅏ", "ꍟ", "ꋪ", "꓄", "ꌩ", "ꀎ", "ꀤ", "ꂦ", "ꉣ"],
      secondRow: ["ꍏ", "ꌗ", "ꀸ", "ꎇ", "ꁅ", "ꃅ", "ꀭ", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꊼ", "ꉓ", "ꃴ", "ꌃ", "ꈤ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅏ", "ꍟ", "ꋪ", "꓄", "ꌩ", "ꀎ", "ꀤ", "ꂦ", "ꉣ"],
      secondRow: ["ꍏ", "ꌗ", "ꀸ", "ꎇ", "ꁅ", "ꃅ", "ꀭ", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꊼ", "ꉓ", "ꃴ", "ꌃ", "ꈤ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᵟ", "ᵂ", "ᴱ", "ᴿ", "ᵀ", "ᵞ", "ᵁ", "ᴵ", "ᴼ", "ᴾ"],
      secondRow: ["ᴬ", "ˢ", "ᴰ", "ᶠ", "ᴳ", "ᴴ", "ᴶ", "ᴷ", "ᴸ"],
      thirdRow: ["ᶻ", "ˣ", "ᶜ", "ᵛ", "ᴮ", "ᴺ", "ᴹ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᵟ", "ᵂ", "ᴱ", "ᴿ", "ᵀ", "ᵞ", "ᵁ", "ᴵ", "ᴼ", "ᴾ"],
      secondRow: ["ᴬ", "ˢ", "ᴰ", "ᶠ", "ᴳ", "ᴴ", "ᴶ", "ᴷ", "ᴸ"],
      thirdRow: ["ᶻ", "ˣ", "ᶜ", "ᵛ", "ᴮ", "ᴺ", "ᴹ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅐ", "ꏂ", "ꋪ", "꓄", "ꌦ", "꒤", "꒐", "ꄲ", "ꉣ"],
      secondRow: ["ꋬ", "ꇙ", "꒯", "ꊰ", "ꍌ", "ꁝ", "꒻", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꉧ", "ꉔ", "꒦", "ꃳ", "ꋊ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅐ", "ꏂ", "ꋪ", "꓄", "ꌦ", "꒤", "꒐", "ꄲ", "ꉣ"],
      secondRow: ["ꋬ", "ꇙ", "꒯", "ꊰ", "ꍌ", "ꁝ", "꒻", "ꀘ", "꒒"],
      thirdRow: ["ꁴ", "ꉧ", "ꉔ", "꒦", "ꃳ", "ꋊ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ҩ", "Ɯ", "Ɛ", "尺", "Ť", "Ϥ", "Ц", "ɪ", "Ø", "þ"],
      secondRow: ["Λ", "ら", "Ð", "F", "Ɠ", "н", "ﾌ", "Қ", "Ł"],
      thirdRow: ["Ẕ", "χ", "ㄈ", "Ɣ", "Ϧ", "Л", "௱"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ҩ", "Ɯ", "Ɛ", "尺", "Ť", "Ϥ", "Ц", "ɪ", "Ø", "þ"],
      secondRow: ["Λ", "ら", "Ð", "F", "Ɠ", "н", "ﾌ", "Қ", "Ł"],
      thirdRow: ["Ẕ", "χ", "ㄈ", "Ɣ", "Ϧ", "Л", "௱"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ƣ", "Ɯ", "Є", "Ʀ", "Ƭ", "Ƴ", "Ʋ", "Ɩ", "Ơ", "Ƥ"],
      secondRow: ["ƛ", "Ƨ", "Ɗ", "Ƒ", "Ɠ", "Ӈ", "ʆ", "Ƙ", "Լ"],
      thirdRow: ["Ȥ", "Ҳ", "Ƈ", "Ɣ", "Ɓ", "Ɲ", "M"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ƣ", "Ɯ", "Є", "Ʀ", "Ƭ", "Ƴ", "Ʋ", "Ɩ", "Ơ", "Ƥ"],
      secondRow: ["ƛ", "Ƨ", "Ɗ", "Ƒ", "Ɠ", "Ӈ", "ʆ", "Ƙ", "Լ"],
      thirdRow: ["Ȥ", "Ҳ", "Ƈ", "Ɣ", "Ɓ", "Ɲ", "M"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꁷ", "ꅏ", "ꈼ", "ꌅ", "ꋖ", "ꐞ", "ꐇ", "ꂑ", "ꂦ", "ꉣ"],
      secondRow: ["ꁲ", "ꌚ", "ꂠ", "ꄞ", "ꁅ", "ꍩ", "꒻", "ꀗ", "꒒"],
      thirdRow: ["ꁴ", "ꇒ", "ꀯ", "ꀰ", "ꋰ", "ꋊ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꁷ", "ꅏ", "ꈼ", "ꌅ", "ꋖ", "ꐞ", "ꐇ", "ꂑ", "ꂦ", "ꉣ"],
      secondRow: ["ꁲ", "ꌚ", "ꂠ", "ꄞ", "ꁅ", "ꍩ", "꒻", "ꀗ", "꒒"],
      thirdRow: ["ꁴ", "ꇒ", "ꀯ", "ꀰ", "ꋰ", "ꋊ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꋠ", "ꅐ", "ꏂ", "ꋪ", "꓄", "ꐞ", "ꀎ", "꒐", "ꉻ", "ꉣ"],
      secondRow: ["ꋬ", "ꑄ", "ꂟ", "ꄟ", "ꍌ", "ꃬ", "꒻", "ꀘ", "꒒"],
      thirdRow: ["ꑓ", "ꉼ", "ꏳ", "꒦", "ꍗ", "ꂚ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꋠ", "ꅐ", "ꏂ", "ꋪ", "꓄", "ꐞ", "ꀎ", "꒐", "ꉻ", "ꉣ"],
      secondRow: ["ꋬ", "ꑄ", "ꂟ", "ꄟ", "ꍌ", "ꃬ", "꒻", "ꀘ", "꒒"],
      thirdRow: ["ꑓ", "ꉼ", "ꏳ", "꒦", "ꍗ", "ꂚ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["φ", "ա", "ȝ", "Ր", "Ե", "Վ", "Մ", "ɿ", "Ծ", "ρ"],
      secondRow: ["Թ", "Տ", "Ժ", "Բ", "Գ", "ɧ", "ʝ", "ƙ", "ʅ"],
      thirdRow: ["Հ", "Ճ", "Շ", "౮", "Յ", "Ռ", "ʍ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["φ", "ա", "ȝ", "Ր", "Ե", "Վ", "Մ", "ɿ", "Ծ", "ρ"],
      secondRow: ["Թ", "Տ", "Ժ", "Բ", "Գ", "ɧ", "ʝ", "ƙ", "ʅ"],
      thirdRow: ["Հ", "Ճ", "Շ", "౮", "Յ", "Ռ", "ʍ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ゐ", "山", "乇", "尺", "ｲ", "ﾘ", "ひ", "ﾉ", "の", "ｱ"],
      secondRow: ["ﾑ", "丂", "り", "ｷ", "ム", "ん", "ﾌ", "ズ", "ﾚ"],
      thirdRow: ["乙", "ﾒ", "ᄃ", "√", "乃", "刀", "爪"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ゐ", "山", "乇", "尺", "ｲ", "ﾘ", "ひ", "ﾉ", "の", "ｱ"],
      secondRow: ["ﾑ", "丂", "り", "ｷ", "ム", "ん", "ﾌ", "ズ", "ﾚ"],
      thirdRow: ["乙", "ﾒ", "ᄃ", "√", "乃", "刀", "爪"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["Ω", "ω", "ε", "r", "†", "ψ", "u", "ï", "⊕", "p"],
      secondRow: ["α", "š", "d", "ƒ", "g", "h", "յ", "κ", "ﾚ"],
      thirdRow: ["z", "x", "ς", "∀", "ß", "η", "m"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["Ω", "ω", "ε", "r", "†", "ψ", "u", "ï", "⊕", "p"],
      secondRow: ["α", "š", "d", "ƒ", "g", "h", "յ", "κ", "ﾚ"],
      thirdRow: ["z", "x", "ς", "∀", "ß", "η", "m"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["๑", "ຟ", "ē", "r", "t", "ฯ", "น", "i", "໐", "p"],
      secondRow: ["ค", "Ş", "໓", "f", "ງ", "h", "ว", "k", "l"],
      thirdRow: ["ຊ", "x", "¢", "ง", "๖", "ຖ", "๓"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["๑", "ຟ", "ē", "r", "t", "ฯ", "น", "i", "໐", "p"],
      secondRow: ["ค", "Ş", "໓", "f", "ງ", "h", "ว", "k", "l"],
      thirdRow: ["ຊ", "x", "¢", "ง", "๖", "ຖ", "๓"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ῳ", "ɛ", "ཞ", "ɬ", "ყ", "ų", "ı", "ơ", "℘"],
      secondRow: ["ą", "ʂ", "ɖ", "ʄ", "ɠ", "ɧ", "ʝ", "ƙ", "Ɩ"],
      thirdRow: ["ʑ", "ҳ", "ƈ", "۷", "ც", "ŋ", "ɱ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["զ", "ῳ", "ɛ", "ཞ", "ɬ", "ყ", "ų", "ı", "ơ", "℘"],
      secondRow: ["ą", "ʂ", "ɖ", "ʄ", "ɠ", "ɧ", "ʝ", "ƙ", "Ɩ"],
      thirdRow: ["ʑ", "ҳ", "ƈ", "۷", "ც", "ŋ", "ɱ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ᕴ", "ᘺ", "ᘿ", "ᖇ", "ᖶ", "ᖻ", "ᑘ", "ᓰ", "ᓍ", "ᕵ"],
      secondRow: ["ᗩ", "S", "ᕲ", "ᖴ", "ᘜ", "ᕼ", "ᒚ", "ᖽᐸ", "ᒪ"],
      thirdRow: ["ᗱ", "᙭", "ᑢ", "ᐺ", "ᗷ", "ᘉ", "ᘻ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ᕴ", "ᘺ", "ᘿ", "ᖇ", "ᖶ", "ᖻ", "ᑘ", "ᓰ", "ᓍ", "ᕵ"],
      secondRow: ["ᗩ", "S", "ᕲ", "ᖴ", "ᘜ", "ᕼ", "ᒚ", "ᖽᐸ", "ᒪ"],
      thirdRow: ["ᗱ", "᙭", "ᑢ", "ᐺ", "ᗷ", "ᘉ", "ᘻ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅐ", "ꏹ", "ꋪ", "ꋖ", "ꂖ", "ꌈ", "ꀤ", "ꁏ", "ꉣ"],
      secondRow: ["ꁲ", "ꌚ", "ꂡ", "ꄙ", "ꁍ", "ꀍ", "ꀭ", "ꈵ", "꒒"],
      thirdRow: ["ꁴ", "ꋚ", "ꇃ", "ꃴ", "ꃃ", "ꋊ", "ꂵ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ꆰ", "ꅐ", "ꏹ", "ꋪ", "ꋖ", "ꂖ", "ꌈ", "ꀤ", "ꁏ", "ꉣ"],
      secondRow: ["ꁲ", "ꌚ", "ꂡ", "ꄙ", "ꁍ", "ꀍ", "ꀭ", "ꈵ", "꒒"],
      thirdRow: ["ꁴ", "ꋚ", "ꇃ", "ꃴ", "ꃃ", "ꋊ", "ꂵ"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["գ", "Ꮃ", "ꂅ", "Ꮢ", "Ϯ", "Ꭹ", "u", "Ꭵ", "Ծ", "Ꮅ"],
      secondRow: ["ᕱ", "Ꮥ", "Ꭰ", "ꊰ", "g", "♅", "ϳ", "К", "լ"],
      thirdRow: ["Ꮓ", "ꊼ", "꒝", "Ꮙ", "ც", "ภ", "ო"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["գ", "Ꮃ", "ꂅ", "Ꮢ", "Ϯ", "Ꭹ", "u", "Ꭵ", "Ծ", "Ꮅ"],
      secondRow: ["ᕱ", "Ꮥ", "Ꭰ", "ꊰ", "g", "♅", "ϳ", "К", "լ"],
      thirdRow: ["Ꮓ", "ꊼ", "꒝", "Ꮙ", "ც", "ภ", "ო"]
    )
  ),
  KeyboardLayout(
    lowerCase: KeyboardLayoutVariant(
      firstRow: ["ዒ", "ሠ", "ቿ", "ዪ", "ፕ", "ሃ", "ሁ", "ጎ", "ዐ", "የ"],
      secondRow: ["ል", "ነ", "ዕ", "ቻ", "ኗ", "ዘ", "ጋ", "ጕ", "ረ"],
      thirdRow: ["ጊ", "ሸ", "ር", "ሀ", "ጌ", "ክ", "ጠ"]
    ),
    upperCase: KeyboardLayoutVariant(
      firstRow: ["ዒ", "ሠ", "ቿ", "ዪ", "ፕ", "ሃ", "ሁ", "ጎ", "ዐ", "የ"],
      secondRow: ["ል", "ነ", "ዕ", "ቻ", "ኗ", "ዘ", "ጋ", "ጕ", "ረ"],
      thirdRow: ["ጊ", "ሸ", "ር", "ሀ", "ጌ", "ክ", "ጠ"]
    )
  ),
]
