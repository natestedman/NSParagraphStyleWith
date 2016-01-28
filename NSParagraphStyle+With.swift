// NSParagraphStyle+With
// Written in 2016 by Nate Stedman <nate@natestedman.com>
//
// To the extent possible under law, the author(s) have dedicated all copyright and
// related and neighboring rights to this software to the public domain worldwide.
// This software is distributed without any warranty.
//
// You should have received a copy of the CC0 Public Domain Dedication along with
// this software. If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

import Foundation

extension NSParagraphStyle
{
    /**
     Creates a paragraph style object. If a parameter is omitted, the value of that property from
     `NSParagraphStyle.defaultParagraphStyle()` will be used. Therefore, `NSParagraphStyle.with` is equivalent to
     calling that function.

     - parameter alignment:              The text alignment of the paragraph style.
     - parameter firstLineHeadIndent:    The indentation of the first line of the paragraph style.
     - parameter headIndent:             The indentation of the receiver's lines other than the first.
     - parameter tailIndent:             The trailing indentation of the receiver.
     - parameter lineBreakMode:          The mode that should be used to break lines in the receiver.
     - parameter maximumLineHeight:      The receiver's maximum line height.
     - parameter minimumLineHeight:      The receiver's minimum height.
     - parameter lineSpacing:            The distance in points between the bottom of one line fragment and the top of
                                         the next.
     - parameter paragraphSpacing:       The space after the end of the paragraph.
     - parameter paragraphSpacingBefore: The distance between the paragraph’s top and the beginning of its text content.
     - parameter baseWritingDirection:   The base writing direction for the receiver.
     - parameter lineHeightMultiple:     The line height multiple.
     - parameter tabStops:               The paragraph style's tab stops.
     - parameter defaultTabInterval:     The default tab interval.
     - parameter hyphenationFactor:      The paragraph’s threshold for hyphenation.
     */
    public static func with(
        alignment alignment: NSTextAlignment = NSParagraphStyle.defaultParagraphStyle().alignment,
        firstLineHeadIndent: CGFloat = NSParagraphStyle.defaultParagraphStyle().firstLineHeadIndent,
        headIndent: CGFloat = NSParagraphStyle.defaultParagraphStyle().headIndent,
        tailIndent: CGFloat = NSParagraphStyle.defaultParagraphStyle().tailIndent,
        lineBreakMode: NSLineBreakMode = NSParagraphStyle.defaultParagraphStyle().lineBreakMode,
        maximumLineHeight: CGFloat = NSParagraphStyle.defaultParagraphStyle().maximumLineHeight,
        minimumLineHeight: CGFloat = NSParagraphStyle.defaultParagraphStyle().minimumLineHeight,
        lineSpacing: CGFloat = NSParagraphStyle.defaultParagraphStyle().lineSpacing,
        paragraphSpacing: CGFloat = NSParagraphStyle.defaultParagraphStyle().paragraphSpacing,
        paragraphSpacingBefore: CGFloat = NSParagraphStyle.defaultParagraphStyle().paragraphSpacingBefore,
        baseWritingDirection: NSWritingDirection = NSParagraphStyle.defaultParagraphStyle().baseWritingDirection,
        lineHeightMultiple: CGFloat = NSParagraphStyle.defaultParagraphStyle().lineHeightMultiple,
        tabStops: [NSTextTab] = NSParagraphStyle.defaultParagraphStyle().tabStops,
        defaultTabInterval: CGFloat = NSParagraphStyle.defaultParagraphStyle().defaultTabInterval,
        hyphenationFactor: Float = NSParagraphStyle.defaultParagraphStyle().hyphenationFactor) -> NSParagraphStyle
    {
        let style = NSMutableParagraphStyle()
        style.alignment = alignment
        style.firstLineHeadIndent = firstLineHeadIndent
        style.headIndent = headIndent
        style.tailIndent = tailIndent
        style.lineBreakMode = lineBreakMode
        style.maximumLineHeight = maximumLineHeight
        style.minimumLineHeight = minimumLineHeight
        style.lineSpacing = lineSpacing
        style.paragraphSpacing = paragraphSpacing
        style.paragraphSpacingBefore = paragraphSpacingBefore
        style.baseWritingDirection = baseWritingDirection
        style.lineHeightMultiple = lineHeightMultiple
        style.tabStops = tabStops
        style.defaultTabInterval = defaultTabInterval
        style.hyphenationFactor = hyphenationFactor
        return style
    }
}
