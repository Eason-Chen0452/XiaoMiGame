package com.xiaomi.hy.dj.pbformat;

import com.google.protobuf.ByteString;
import com.google.protobuf.DescriptorProtos.MessageOptions;
import com.google.protobuf.Descriptors.Descriptor;
import com.google.protobuf.Descriptors.EnumDescriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor;
import com.google.protobuf.Descriptors.FieldDescriptor.JavaType;
import com.google.protobuf.Descriptors.FieldDescriptor.Type;
import com.google.protobuf.ExtensionRegistry;
import com.google.protobuf.ExtensionRegistry.ExtensionInfo;
import com.google.protobuf.Message;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnknownFieldSet.Field;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JavaPropsFormat
  extends AbstractCharBasedFormatter
{
  private String createFieldNameCollectionIndex(String paramString, Integer paramInteger)
    throws IOException
  {
    String str = paramString;
    if (paramInteger != null) {
      str = paramString + "[" + paramInteger.toString() + "]";
    }
    return str;
  }
  
  static String escapeBytes(ByteString paramByteString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramByteString.size());
    int i = 0;
    if (i < paramByteString.size())
    {
      int j = paramByteString.byteAt(i);
      switch (j)
      {
      default: 
        if (j >= 32) {
          localStringBuilder.append((char)j);
        }
        break;
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("\\a");
        continue;
        localStringBuilder.append("\\b");
        continue;
        localStringBuilder.append("\\f");
        continue;
        localStringBuilder.append("\\n");
        continue;
        localStringBuilder.append("\\r");
        continue;
        localStringBuilder.append("\\t");
        continue;
        localStringBuilder.append("\\v");
        continue;
        localStringBuilder.append("\\\\");
        continue;
        localStringBuilder.append("\\'");
        continue;
        localStringBuilder.append("\\\"");
        continue;
        localStringBuilder.append('\\');
        localStringBuilder.append((char)((j >>> 6 & 0x3) + 48));
        localStringBuilder.append((char)((j >>> 3 & 0x7) + 48));
        localStringBuilder.append((char)((j & 0x7) + 48));
      }
    }
    return localStringBuilder.toString();
  }
  
  static String escapeText(String paramString)
  {
    return escapeBytes(ByteString.copyFromUtf8(paramString));
  }
  
  private void mergeField(Tokenizer paramTokenizer, ExtensionRegistry paramExtensionRegistry, Map<String, Message> paramMap, Message.Builder paramBuilder)
    throws JavaPropsFormat.ParseException
  {
    Object localObject4 = null;
    Descriptors.Descriptor localDescriptor = paramBuilder.getDescriptorForType();
    Object localObject1;
    Object localObject3;
    Object localObject2;
    if (paramTokenizer.tryConsume("["))
    {
      localObject1 = new StringBuilder(paramTokenizer.consumeIdentifier());
      while (paramTokenizer.tryConsume("."))
      {
        ((StringBuilder)localObject1).append('.');
        ((StringBuilder)localObject1).append(paramTokenizer.consumeIdentifier());
      }
      localObject3 = paramExtensionRegistry.findExtensionByName(((StringBuilder)localObject1).toString());
      if (localObject3 == null) {
        throw paramTokenizer.parseExceptionPreviousToken("Extension \"" + localObject1 + "\" not found in the ExtensionRegistry.");
      }
      if (((ExtensionRegistry.ExtensionInfo)localObject3).descriptor.getContainingType() != localDescriptor) {
        throw paramTokenizer.parseExceptionPreviousToken("Extension \"" + localObject1 + "\" does not extend message type \"" + localDescriptor.getFullName() + "\".");
      }
      paramTokenizer.consume("]");
      localObject2 = ((ExtensionRegistry.ExtensionInfo)localObject3).descriptor;
    }
    for (;;)
    {
      if (((Descriptors.FieldDescriptor)localObject2).isRepeated())
      {
        paramTokenizer.consume("[");
        localObject1 = Integer.valueOf(paramTokenizer.consumeInt32());
        paramTokenizer.consume("]");
      }
      for (;;)
      {
        if (((Descriptors.FieldDescriptor)localObject2).getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE)
        {
          paramTokenizer.consume(".");
          if (localObject3 == null)
          {
            localObject3 = paramBuilder.newBuilderForField((Descriptors.FieldDescriptor)localObject2);
            localObject4 = (Message)paramMap.get(((Descriptors.FieldDescriptor)localObject2).getFullName());
            if (localObject4 != null) {
              ((Message.Builder)localObject3).mergeFrom((Message)localObject4);
            }
            mergeField(paramTokenizer, paramExtensionRegistry, paramMap, (Message.Builder)localObject3);
            paramExtensionRegistry = ((Message.Builder)localObject3).buildPartial();
            paramMap.put(((Descriptors.FieldDescriptor)localObject2).getFullName(), (Message)paramExtensionRegistry);
          }
        }
        for (;;)
        {
          if (((Descriptors.FieldDescriptor)localObject2).isRepeated())
          {
            if (paramBuilder.getRepeatedFieldCount((Descriptors.FieldDescriptor)localObject2) - 1 < ((Integer)localObject1).intValue())
            {
              paramBuilder.addRepeatedField((Descriptors.FieldDescriptor)localObject2, paramExtensionRegistry);
              return;
              localObject3 = paramTokenizer.consumeIdentifier();
              localObject2 = localDescriptor.findFieldByName((String)localObject3);
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject2 = localDescriptor.findFieldByName(((String)localObject3).toLowerCase(Locale.US));
                localObject1 = localObject2;
                if (localObject2 != null)
                {
                  localObject1 = localObject2;
                  if (((Descriptors.FieldDescriptor)localObject2).getType() != Descriptors.FieldDescriptor.Type.GROUP) {
                    localObject1 = null;
                  }
                }
              }
              localObject2 = localObject1;
              if (localObject1 != null)
              {
                localObject2 = localObject1;
                if (((Descriptors.FieldDescriptor)localObject1).getType() == Descriptors.FieldDescriptor.Type.GROUP)
                {
                  localObject2 = localObject1;
                  if (!((Descriptors.FieldDescriptor)localObject1).getMessageType().getName().equals(localObject3)) {
                    localObject2 = null;
                  }
                }
              }
              if (localObject2 != null) {
                break label899;
              }
              throw paramTokenizer.parseExceptionPreviousToken("Message type \"" + localDescriptor.getFullName() + "\" has no field named \"" + (String)localObject3 + "\".");
              localObject3 = ((ExtensionRegistry.ExtensionInfo)localObject3).defaultInstance.newBuilderForType();
              break;
              paramTokenizer.consume("=");
              switch (JavaPropsFormat.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[localObject2.getType().ordinal()])
              {
              default: 
                paramExtensionRegistry = (ExtensionRegistry)localObject4;
                break;
              case 1: 
              case 3: 
              case 5: 
                paramExtensionRegistry = Integer.valueOf(paramTokenizer.consumeInt32());
                break;
              case 2: 
              case 4: 
              case 6: 
                paramExtensionRegistry = Long.valueOf(paramTokenizer.consumeInt64());
                break;
              case 10: 
              case 11: 
                paramExtensionRegistry = Integer.valueOf(paramTokenizer.consumeUInt32());
                break;
              case 12: 
              case 13: 
                paramExtensionRegistry = Long.valueOf(paramTokenizer.consumeUInt64());
                break;
              case 7: 
                paramExtensionRegistry = Float.valueOf(paramTokenizer.consumeFloat());
                break;
              case 8: 
                paramExtensionRegistry = Double.valueOf(paramTokenizer.consumeDouble());
                break;
              case 9: 
                paramExtensionRegistry = Boolean.valueOf(paramTokenizer.consumeBoolean());
                break;
              case 14: 
                paramExtensionRegistry = paramTokenizer.consumeString();
                break;
              case 15: 
                paramExtensionRegistry = paramTokenizer.consumeByteString();
                break;
              case 16: 
                localObject3 = ((Descriptors.FieldDescriptor)localObject2).getEnumType();
                if (paramTokenizer.lookingAtInteger())
                {
                  int i = paramTokenizer.consumeInt32();
                  paramMap = ((Descriptors.EnumDescriptor)localObject3).findValueByNumber(i);
                  paramExtensionRegistry = paramMap;
                  if (paramMap != null) {
                    continue;
                  }
                  throw paramTokenizer.parseExceptionPreviousToken("Enum type \"" + ((Descriptors.EnumDescriptor)localObject3).getFullName() + "\" has no value with number " + i + '.');
                }
                localObject4 = paramTokenizer.consumeIdentifier();
                paramMap = ((Descriptors.EnumDescriptor)localObject3).findValueByName((String)localObject4);
                paramExtensionRegistry = paramMap;
                if (paramMap != null) {
                  continue;
                }
                throw paramTokenizer.parseExceptionPreviousToken("Enum type \"" + ((Descriptors.EnumDescriptor)localObject3).getFullName() + "\" has no value named \"" + (String)localObject4 + "\".");
              case 17: 
              case 18: 
                throw new RuntimeException("Can't get here.");
              }
            }
            paramBuilder.setRepeatedField((Descriptors.FieldDescriptor)localObject2, ((Integer)localObject1).intValue(), paramExtensionRegistry);
            return;
          }
        }
        paramBuilder.setField((Descriptors.FieldDescriptor)localObject2, paramExtensionRegistry);
        return;
        localObject1 = null;
      }
      label899:
      localObject3 = null;
    }
  }
  
  static int parseInt32(String paramString)
    throws NumberFormatException
  {
    return (int)parseInteger(paramString, true, false);
  }
  
  static long parseInt64(String paramString)
    throws NumberFormatException
  {
    return parseInteger(paramString, true, true);
  }
  
  private static long parseInteger(String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws NumberFormatException
  {
    int k;
    if (paramString.startsWith("-", 0))
    {
      if (!paramBoolean1) {
        throw new NumberFormatException("Number must be positive: " + paramString);
      }
      k = 1;
    }
    for (int i = 1;; i = 0)
    {
      int j = 10;
      int m;
      Object localObject;
      long l1;
      if (paramString.startsWith("0x", i))
      {
        m = i + 2;
        j = 16;
        localObject = paramString.substring(m);
        if (((String)localObject).length() >= 16) {
          break label234;
        }
        l1 = Long.parseLong((String)localObject, j);
        if (k == 0) {
          break label424;
        }
        l1 = -l1;
      }
      label234:
      label418:
      label421:
      label424:
      for (;;)
      {
        long l2 = l1;
        if (!paramBoolean2)
        {
          if (paramBoolean1)
          {
            if (l1 <= 2147483647L)
            {
              l2 = l1;
              if (l1 >= -2147483648L) {
                break label418;
              }
            }
            throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
            m = i;
            if (!paramString.startsWith("0", i)) {
              break;
            }
            j = 8;
            m = i;
            break;
          }
          if (l1 < 4294967296L)
          {
            l2 = l1;
            if (l1 >= 0L) {}
          }
          else
          {
            throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
            localObject = new BigInteger((String)localObject, j);
            if (k == 0) {
              break label421;
            }
            localObject = ((BigInteger)localObject).negate();
          }
        }
        for (;;)
        {
          if (!paramBoolean2)
          {
            if (paramBoolean1)
            {
              if (((BigInteger)localObject).bitLength() > 31) {
                throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
              }
            }
            else if (((BigInteger)localObject).bitLength() > 32) {
              throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
            }
          }
          else if (paramBoolean1)
          {
            if (((BigInteger)localObject).bitLength() > 63) {
              throw new NumberFormatException("Number out of range for 64-bit signed integer: " + paramString);
            }
          }
          else if (((BigInteger)localObject).bitLength() > 64) {
            throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + paramString);
          }
          l2 = ((BigInteger)localObject).longValue();
          return l2;
        }
      }
      k = 0;
    }
  }
  
  static int parseUInt32(String paramString)
    throws NumberFormatException
  {
    return (int)parseInteger(paramString, false, false);
  }
  
  static long parseUInt64(String paramString)
    throws NumberFormatException
  {
    return parseInteger(paramString, false, true);
  }
  
  private void print(Message paramMessage, JavaPropsGenerator paramJavaPropsGenerator)
    throws IOException
  {
    Iterator localIterator = paramMessage.getAllFields().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      printField((Descriptors.FieldDescriptor)localEntry.getKey(), localEntry.getValue(), paramJavaPropsGenerator);
    }
    printUnknownFields(paramMessage.getUnknownFields(), paramJavaPropsGenerator);
  }
  
  private void printField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, JavaPropsGenerator paramJavaPropsGenerator)
    throws IOException
  {
    if (paramFieldDescriptor.isRepeated())
    {
      paramObject = (List)paramObject;
      int i = 0;
      while (i < ((List)paramObject).size())
      {
        printSingleField(paramFieldDescriptor, ((List)paramObject).get(i), Integer.valueOf(i), paramJavaPropsGenerator);
        i += 1;
      }
    }
    printSingleField(paramFieldDescriptor, paramObject, null, paramJavaPropsGenerator);
  }
  
  private void printFieldValue(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, JavaPropsGenerator paramJavaPropsGenerator)
    throws IOException
  {
    switch (JavaPropsFormat.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[paramFieldDescriptor.getType().ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    case 9: 
      paramJavaPropsGenerator.print(paramObject.toString());
      return;
    case 10: 
    case 11: 
      paramJavaPropsGenerator.print(TextUtils.unsignedToString(((Integer)paramObject).intValue()));
      return;
    case 12: 
    case 13: 
      paramJavaPropsGenerator.print(TextUtils.unsignedToString(((Long)paramObject).longValue()));
      return;
    case 14: 
      paramJavaPropsGenerator.print("\"");
      paramJavaPropsGenerator.print(escapeText((String)paramObject));
      paramJavaPropsGenerator.print("\"");
      return;
    case 15: 
      paramJavaPropsGenerator.print("\"");
      paramJavaPropsGenerator.print(escapeBytes((ByteString)paramObject));
      paramJavaPropsGenerator.print("\"");
      return;
    case 16: 
      paramJavaPropsGenerator.print(((Descriptors.EnumValueDescriptor)paramObject).getName());
      return;
    }
    print((Message)paramObject, paramJavaPropsGenerator);
  }
  
  private void printSingleField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, Integer paramInteger, JavaPropsGenerator paramJavaPropsGenerator)
    throws IOException
  {
    if (paramFieldDescriptor.isExtension())
    {
      paramJavaPropsGenerator.print("[");
      if ((paramFieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat()) && (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) && (paramFieldDescriptor.isOptional()) && (paramFieldDescriptor.getExtensionScope() == paramFieldDescriptor.getMessageType()))
      {
        paramJavaPropsGenerator.print(paramFieldDescriptor.getMessageType().getFullName());
        paramJavaPropsGenerator.print("]");
        label74:
        if (paramFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.GROUP) {
          break label183;
        }
        paramJavaPropsGenerator.indent(createFieldNameCollectionIndex(paramFieldDescriptor.getMessageType().getName(), paramInteger));
      }
    }
    for (;;)
    {
      printFieldValue(paramFieldDescriptor, paramObject, paramJavaPropsGenerator);
      if (paramFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.MESSAGE) {
        break label221;
      }
      paramJavaPropsGenerator.outdent(createFieldNameCollectionIndex(paramFieldDescriptor.getName(), paramInteger));
      return;
      paramJavaPropsGenerator.print(paramFieldDescriptor.getFullName());
      break;
      if ((paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) || (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE)) {
        break label74;
      }
      paramJavaPropsGenerator.print(createFieldNameCollectionIndex(paramFieldDescriptor.getName(), paramInteger));
      break label74;
      label183:
      if (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) {
        paramJavaPropsGenerator.indent(createFieldNameCollectionIndex(paramFieldDescriptor.getName(), paramInteger));
      } else {
        paramJavaPropsGenerator.print("=");
      }
    }
    label221:
    if (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP)
    {
      paramJavaPropsGenerator.outdent(createFieldNameCollectionIndex(paramFieldDescriptor.getMessageType().getName(), paramInteger));
      return;
    }
    paramJavaPropsGenerator.print("\n");
  }
  
  private void printUnknownFields(UnknownFieldSet paramUnknownFieldSet, JavaPropsGenerator paramJavaPropsGenerator)
    throws IOException
  {
    paramUnknownFieldSet = paramUnknownFieldSet.asMap().entrySet().iterator();
    while (paramUnknownFieldSet.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramUnknownFieldSet.next();
      Object localObject1 = (UnknownFieldSet.Field)localEntry.getValue();
      Object localObject2 = ((UnknownFieldSet.Field)localObject1).getVarintList().iterator();
      long l;
      while (((Iterator)localObject2).hasNext())
      {
        l = ((Long)((Iterator)localObject2).next()).longValue();
        paramJavaPropsGenerator.print(((Integer)localEntry.getKey()).toString());
        paramJavaPropsGenerator.print("=");
        paramJavaPropsGenerator.print(TextUtils.unsignedToString(l));
        paramJavaPropsGenerator.print("\n");
      }
      localObject2 = ((UnknownFieldSet.Field)localObject1).getFixed32List().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        int i = ((Integer)((Iterator)localObject2).next()).intValue();
        paramJavaPropsGenerator.print(((Integer)localEntry.getKey()).toString());
        paramJavaPropsGenerator.print("=");
        paramJavaPropsGenerator.print(String.format(null, "0x%08x", new Object[] { Integer.valueOf(i) }));
        paramJavaPropsGenerator.print("\n");
      }
      localObject2 = ((UnknownFieldSet.Field)localObject1).getFixed64List().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        l = ((Long)((Iterator)localObject2).next()).longValue();
        paramJavaPropsGenerator.print(((Integer)localEntry.getKey()).toString());
        paramJavaPropsGenerator.print("=");
        paramJavaPropsGenerator.print(String.format(null, "0x%016x", new Object[] { Long.valueOf(l) }));
        paramJavaPropsGenerator.print("\n");
      }
      localObject2 = ((UnknownFieldSet.Field)localObject1).getLengthDelimitedList().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ByteString localByteString = (ByteString)((Iterator)localObject2).next();
        paramJavaPropsGenerator.print(((Integer)localEntry.getKey()).toString());
        paramJavaPropsGenerator.print("=\"");
        paramJavaPropsGenerator.print(escapeBytes(localByteString));
        paramJavaPropsGenerator.print("\"\n");
      }
      localObject1 = ((UnknownFieldSet.Field)localObject1).getGroupList().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (UnknownFieldSet)((Iterator)localObject1).next();
        paramJavaPropsGenerator.indent(((Integer)localEntry.getKey()).toString());
        printUnknownFields((UnknownFieldSet)localObject2, paramJavaPropsGenerator);
        paramJavaPropsGenerator.outdent(((Integer)localEntry.getKey()).toString());
        paramJavaPropsGenerator.print("\n");
      }
    }
  }
  
  static ByteString unescapeBytes(CharSequence paramCharSequence)
    throws JavaPropsFormat.InvalidEscapeSequenceException
  {
    byte[] arrayOfByte = new byte[paramCharSequence.length()];
    int j = 0;
    int m = 0;
    if (j < paramCharSequence.length())
    {
      int i = paramCharSequence.charAt(j);
      int k;
      char c;
      int n;
      if (i == 92) {
        if (j + 1 < paramCharSequence.length())
        {
          k = j + 1;
          c = paramCharSequence.charAt(k);
          if (TextUtils.isOctal(c))
          {
            n = TextUtils.digitValue(c);
            i = n;
            j = k;
            if (k + 1 < paramCharSequence.length())
            {
              i = n;
              j = k;
              if (TextUtils.isOctal(paramCharSequence.charAt(k + 1)))
              {
                j = k + 1;
                i = n * 8 + TextUtils.digitValue(paramCharSequence.charAt(j));
              }
            }
            n = i;
            k = j;
            if (j + 1 < paramCharSequence.length())
            {
              n = i;
              k = j;
              if (TextUtils.isOctal(paramCharSequence.charAt(j + 1)))
              {
                k = j + 1;
                n = i * 8 + TextUtils.digitValue(paramCharSequence.charAt(k));
              }
            }
            arrayOfByte[m] = ((byte)n);
            i = m + 1;
            j = k;
          }
        }
      }
      for (;;)
      {
        j += 1;
        m = i;
        break;
        switch (c)
        {
        default: 
          throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\" + c + '\'');
        case 'a': 
          arrayOfByte[m] = 7;
          i = m + 1;
          j = k;
          break;
        case 'b': 
          arrayOfByte[m] = 8;
          i = m + 1;
          j = k;
          break;
        case 'f': 
          arrayOfByte[m] = 12;
          i = m + 1;
          j = k;
          break;
        case 'n': 
          arrayOfByte[m] = 10;
          i = m + 1;
          j = k;
          break;
        case 'r': 
          arrayOfByte[m] = 13;
          i = m + 1;
          j = k;
          break;
        case 't': 
          arrayOfByte[m] = 9;
          i = m + 1;
          j = k;
          break;
        case 'v': 
          arrayOfByte[m] = 11;
          i = m + 1;
          j = k;
          break;
        case '\\': 
          arrayOfByte[m] = 92;
          i = m + 1;
          j = k;
          break;
        case '\'': 
          arrayOfByte[m] = 39;
          i = m + 1;
          j = k;
          break;
        case '"': 
          arrayOfByte[m] = 34;
          i = m + 1;
          j = k;
          break;
        case 'x': 
          if ((k + 1 < paramCharSequence.length()) && (TextUtils.isHex(paramCharSequence.charAt(k + 1))))
          {
            n = k + 1;
            k = TextUtils.digitValue(paramCharSequence.charAt(n));
            i = k;
            j = n;
            if (n + 1 < paramCharSequence.length())
            {
              i = k;
              j = n;
              if (TextUtils.isHex(paramCharSequence.charAt(n + 1)))
              {
                j = n + 1;
                i = k * 16 + TextUtils.digitValue(paramCharSequence.charAt(j));
              }
            }
            arrayOfByte[m] = ((byte)i);
            i = m + 1;
          }
          else
          {
            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\x' with no digits");
            throw new InvalidEscapeSequenceException("Invalid escape sequence: '\\' at end of string.");
            arrayOfByte[m] = ((byte)i);
            i = m + 1;
          }
          break;
        }
      }
    }
    return ByteString.copyFrom(arrayOfByte, 0, m);
  }
  
  static String unescapeText(String paramString)
    throws JavaPropsFormat.InvalidEscapeSequenceException
  {
    return unescapeBytes(paramString).toStringUtf8();
  }
  
  public void merge(CharSequence paramCharSequence, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws JavaPropsFormat.ParseException
  {
    paramCharSequence = new Tokenizer(paramCharSequence, null);
    HashMap localHashMap = new HashMap();
    while (!paramCharSequence.atEnd()) {
      mergeField(paramCharSequence, paramExtensionRegistry, localHashMap, paramBuilder);
    }
  }
  
  public void print(Message paramMessage, Appendable paramAppendable)
    throws IOException
  {
    print(paramMessage, new JavaPropsGenerator(paramAppendable, null));
  }
  
  public void print(UnknownFieldSet paramUnknownFieldSet, Appendable paramAppendable)
    throws IOException
  {
    printUnknownFields(paramUnknownFieldSet, new JavaPropsGenerator(paramAppendable, null));
  }
  
  public void printField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, Appendable paramAppendable)
    throws IOException
  {
    printField(paramFieldDescriptor, paramObject, new JavaPropsGenerator(paramAppendable, null));
  }
  
  public String printFieldToString(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      printField(paramFieldDescriptor, paramObject, localStringBuilder);
      paramFieldDescriptor = localStringBuilder.toString();
      return paramFieldDescriptor;
    }
    catch (IOException paramFieldDescriptor)
    {
      throw new RuntimeException("Writing to a StringBuilder threw an IOException (should never happen).", paramFieldDescriptor);
    }
  }
  
  static class InvalidEscapeSequenceException
    extends IOException
  {
    private static final long serialVersionUID = -8164033650142593304L;
    
    InvalidEscapeSequenceException(String paramString)
    {
      super();
    }
  }
  
  private static final class JavaPropsGenerator
  {
    private boolean atStartOfLine = true;
    private final StringBuilder indent = new StringBuilder();
    private Appendable output;
    
    private JavaPropsGenerator(Appendable paramAppendable)
    {
      this.output = paramAppendable;
    }
    
    private void write(CharSequence paramCharSequence, int paramInt)
      throws IOException
    {
      if (paramInt == 0) {
        return;
      }
      if (this.atStartOfLine)
      {
        this.atStartOfLine = false;
        this.output.append(this.indent);
      }
      this.output.append(paramCharSequence);
    }
    
    public final void indent(String paramString)
    {
      this.indent.append(paramString);
      this.indent.append(".");
    }
    
    public final void outdent(String paramString)
    {
      int i = this.indent.length();
      int j = paramString.length();
      if (i == 0) {
        throw new IllegalArgumentException(" Outdent() without matching Indent().");
      }
      this.indent.delete(i - (j + 1), i);
    }
    
    public final void print(CharSequence paramCharSequence)
      throws IOException
    {
      int m = paramCharSequence.length();
      int i = 0;
      int k;
      for (int j = 0; i < m; j = k)
      {
        k = j;
        if (paramCharSequence.charAt(i) == '\n')
        {
          write(paramCharSequence.subSequence(j, m), i - j + 1);
          k = i + 1;
          this.atStartOfLine = true;
        }
        i += 1;
      }
      write(paramCharSequence.subSequence(j, m), m - j);
    }
  }
  
  public static class ParseException
    extends IOException
  {
    private static final long serialVersionUID = 3196188060225107702L;
    
    public ParseException(String paramString)
    {
      super();
    }
  }
  
  private static final class Tokenizer
  {
    private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
    private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
    private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);
    private static final Pattern TOKEN;
    private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
    private int column = 0;
    private String currentToken;
    private int line = 0;
    private final Matcher matcher;
    private int pos = 0;
    private int previousColumn = 0;
    private int previousLine = 0;
    private final CharSequence text;
    
    static
    {
      TOKEN = Pattern.compile("[a-zA-Z_][0-9a-zA-Z_+-]*+|[.]?[0-9+-][0-9a-zA-Z_.+-]*+|\"([^\"\n\\\\]|\\\\.)*+(\"|\\\\?$)|'([^'\n\\\\]|\\\\.)*+('|\\\\?$)", 8);
    }
    
    private Tokenizer(CharSequence paramCharSequence)
    {
      this.text = paramCharSequence;
      this.matcher = WHITESPACE.matcher(paramCharSequence);
      skipWhitespace();
      nextToken();
    }
    
    private void consumeByteString(List<ByteString> paramList)
      throws JavaPropsFormat.ParseException
    {
      int i = 0;
      if (this.currentToken.length() > 0) {
        i = this.currentToken.charAt(0);
      }
      if ((i != 34) && (i != 39)) {
        throw parseException("Expected string.");
      }
      if ((this.currentToken.length() < 2) || (this.currentToken.charAt(this.currentToken.length() - 1) != i)) {
        throw parseException("String missing ending quote.");
      }
      try
      {
        ByteString localByteString = JavaPropsFormat.unescapeBytes(this.currentToken.substring(1, this.currentToken.length() - 1));
        nextToken();
        paramList.add(localByteString);
        return;
      }
      catch (JavaPropsFormat.InvalidEscapeSequenceException paramList)
      {
        throw parseException(paramList.getMessage());
      }
    }
    
    private JavaPropsFormat.ParseException floatParseException(NumberFormatException paramNumberFormatException)
    {
      return parseException("Couldn't parse number: " + paramNumberFormatException.getMessage());
    }
    
    private JavaPropsFormat.ParseException integerParseException(NumberFormatException paramNumberFormatException)
    {
      return parseException("Couldn't parse integer: " + paramNumberFormatException.getMessage());
    }
    
    private void skipWhitespace()
    {
      this.matcher.usePattern(WHITESPACE);
      if (this.matcher.lookingAt()) {
        this.matcher.region(this.matcher.end(), this.matcher.regionEnd());
      }
    }
    
    public final boolean atEnd()
    {
      return this.currentToken.length() == 0;
    }
    
    public final void consume(String paramString)
      throws JavaPropsFormat.ParseException
    {
      if (!tryConsume(paramString)) {
        throw parseException("Expected \"" + paramString + "\".");
      }
    }
    
    public final boolean consumeBoolean()
      throws JavaPropsFormat.ParseException
    {
      if (this.currentToken.equals("true"))
      {
        nextToken();
        return true;
      }
      if (this.currentToken.equals("false"))
      {
        nextToken();
        return false;
      }
      throw parseException("Expected \"true\" or \"false\".");
    }
    
    public final ByteString consumeByteString()
      throws JavaPropsFormat.ParseException
    {
      ArrayList localArrayList = new ArrayList();
      consumeByteString(localArrayList);
      while ((this.currentToken.startsWith("'")) || (this.currentToken.startsWith("\""))) {
        consumeByteString(localArrayList);
      }
      return ByteString.copyFrom(localArrayList);
    }
    
    public final double consumeDouble()
      throws JavaPropsFormat.ParseException
    {
      if (DOUBLE_INFINITY.matcher(this.currentToken).matches())
      {
        boolean bool = this.currentToken.startsWith("-");
        nextToken();
        if (bool) {
          return Double.NEGATIVE_INFINITY;
        }
        return Double.POSITIVE_INFINITY;
      }
      if (this.currentToken.equalsIgnoreCase("nan"))
      {
        nextToken();
        return NaN.0D;
      }
      try
      {
        double d = Double.parseDouble(this.currentToken);
        nextToken();
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw floatParseException(localNumberFormatException);
      }
    }
    
    public final float consumeFloat()
      throws JavaPropsFormat.ParseException
    {
      if (FLOAT_INFINITY.matcher(this.currentToken).matches())
      {
        boolean bool = this.currentToken.startsWith("-");
        nextToken();
        if (bool) {
          return Float.NEGATIVE_INFINITY;
        }
        return Float.POSITIVE_INFINITY;
      }
      if (FLOAT_NAN.matcher(this.currentToken).matches())
      {
        nextToken();
        return NaN.0F;
      }
      try
      {
        float f = Float.parseFloat(this.currentToken);
        nextToken();
        return f;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw floatParseException(localNumberFormatException);
      }
    }
    
    public final String consumeIdentifier()
      throws JavaPropsFormat.ParseException
    {
      int i = 0;
      while (i < this.currentToken.length())
      {
        int j = this.currentToken.charAt(i);
        if (((97 > j) || (j > 122)) && ((65 > j) || (j > 90)) && ((48 > j) || (j > 57)) && (j != 95)) {
          throw parseException("Expected identifier.");
        }
        i += 1;
      }
      String str = this.currentToken;
      nextToken();
      return str;
    }
    
    public final int consumeInt32()
      throws JavaPropsFormat.ParseException
    {
      try
      {
        int i = JavaPropsFormat.parseInt32(this.currentToken);
        nextToken();
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public final long consumeInt64()
      throws JavaPropsFormat.ParseException
    {
      try
      {
        long l = JavaPropsFormat.parseInt64(this.currentToken);
        nextToken();
        return l;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public final String consumeString()
      throws JavaPropsFormat.ParseException
    {
      return consumeByteString().toStringUtf8();
    }
    
    public final int consumeUInt32()
      throws JavaPropsFormat.ParseException
    {
      try
      {
        int i = JavaPropsFormat.parseUInt32(this.currentToken);
        nextToken();
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public final long consumeUInt64()
      throws JavaPropsFormat.ParseException
    {
      try
      {
        long l = JavaPropsFormat.parseUInt64(this.currentToken);
        nextToken();
        return l;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public final boolean lookingAtInteger()
    {
      if (this.currentToken.length() == 0) {}
      int i;
      do
      {
        return false;
        i = this.currentToken.charAt(0);
      } while (((48 > i) || (i > 57)) && (i != 45) && (i != 43));
      return true;
    }
    
    public final void nextToken()
    {
      this.previousLine = this.line;
      this.previousColumn = this.column;
      if (this.pos < this.matcher.regionStart())
      {
        if (this.text.charAt(this.pos) == '\n') {
          this.line += 1;
        }
        for (this.column = 0;; this.column += 1)
        {
          this.pos += 1;
          break;
        }
      }
      if (this.matcher.regionStart() == this.matcher.regionEnd())
      {
        this.currentToken = "";
        return;
      }
      this.matcher.usePattern(TOKEN);
      if (this.matcher.lookingAt())
      {
        this.currentToken = this.matcher.group();
        this.matcher.region(this.matcher.end(), this.matcher.regionEnd());
      }
      for (;;)
      {
        skipWhitespace();
        return;
        this.currentToken = String.valueOf(this.text.charAt(this.pos));
        this.matcher.region(this.pos + 1, this.matcher.regionEnd());
      }
    }
    
    public final JavaPropsFormat.ParseException parseException(String paramString)
    {
      return new JavaPropsFormat.ParseException(this.line + 1 + ":" + (this.column + 1) + ": " + paramString);
    }
    
    public final JavaPropsFormat.ParseException parseExceptionPreviousToken(String paramString)
    {
      return new JavaPropsFormat.ParseException(this.previousLine + 1 + ":" + (this.previousColumn + 1) + ": " + paramString);
    }
    
    public final boolean tryConsume(String paramString)
    {
      if (this.currentToken.equals(paramString))
      {
        nextToken();
        return true;
      }
      return false;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\JavaPropsFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */