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
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.Message;
import com.google.protobuf.Message.Builder;
import com.google.protobuf.UnknownFieldSet;
import com.google.protobuf.UnknownFieldSet.Field;
import java.io.IOException;
import java.math.BigInteger;
import java.text.CharacterIterator;
import java.text.StringCharacterIterator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JsonFormat
  extends AbstractCharBasedFormatter
{
  protected final ByteSerializer byteSerializer;
  
  public JsonFormat()
  {
    this(new DefaultByteSerializer());
  }
  
  public JsonFormat(ByteSerializer paramByteSerializer)
  {
    this.byteSerializer = paramByteSerializer;
  }
  
  static void appendEscapedUnicode(StringBuilder paramStringBuilder, char paramChar)
  {
    String str = "\\u";
    if (paramChar < '\020') {
      str = "\\u000";
    }
    for (;;)
    {
      paramStringBuilder.append(str).append(Integer.toHexString(paramChar));
      return;
      if (paramChar < 'Ā') {
        str = "\\u00";
      } else if (paramChar < 'က') {
        str = "\\u0";
      }
    }
  }
  
  static String escapeText(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    paramString = new StringCharacterIterator(paramString);
    int i = paramString.first();
    if (i != 65535)
    {
      switch (i)
      {
      default: 
        if ((i >= 0) && (i <= 31)) {
          appendEscapedUnicode(localStringBuilder, i);
        }
        break;
      }
      for (;;)
      {
        int j = paramString.next();
        break;
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
        localStringBuilder.append("\\\\");
        continue;
        localStringBuilder.append("\\/");
        continue;
        localStringBuilder.append("\\\"");
        continue;
        if (Character.isHighSurrogate(j))
        {
          appendEscapedUnicode(localStringBuilder, j);
          j = paramString.next();
          if (j == 65535) {
            throw new IllegalArgumentException("invalid unicode string: unexpected high surrogate pair value without corresponding low value.");
          }
          appendEscapedUnicode(localStringBuilder, j);
        }
        else
        {
          localStringBuilder.append(j);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  private void handleMissingField(Tokenizer paramTokenizer, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws JsonFormat.ParseException
  {
    paramTokenizer.tryConsume(":");
    if ("{".equals(paramTokenizer.currentToken()))
    {
      paramTokenizer.consume("{");
      do
      {
        paramTokenizer.consumeIdentifier();
        handleMissingField(paramTokenizer, paramExtensionRegistry, paramBuilder);
      } while (paramTokenizer.tryConsume(","));
      paramTokenizer.consume("}");
    }
    do
    {
      return;
      if ("[".equals(paramTokenizer.currentToken()))
      {
        paramTokenizer.consume("[");
        do
        {
          handleMissingField(paramTokenizer, paramExtensionRegistry, paramBuilder);
        } while (paramTokenizer.tryConsume(","));
        paramTokenizer.consume("]");
        return;
      }
      if ("null".equals(paramTokenizer.currentToken()))
      {
        paramTokenizer.consume("null");
        return;
      }
      if (paramTokenizer.lookingAtFloat())
      {
        paramTokenizer.consumeFloat();
        return;
      }
      if (paramTokenizer.lookingAtInteger())
      {
        paramTokenizer.consumeInt64();
        return;
      }
      if (paramTokenizer.lookingAtBoolean())
      {
        paramTokenizer.consumeBoolean();
        return;
      }
    } while ((!paramTokenizer.currentToken().startsWith("'")) && (!paramTokenizer.currentToken().startsWith("\"")));
    paramTokenizer.consumeString();
  }
  
  private Object handleObject(Tokenizer paramTokenizer, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder, Descriptors.FieldDescriptor paramFieldDescriptor, ExtensionRegistry.ExtensionInfo paramExtensionInfo, boolean paramBoolean)
    throws JsonFormat.ParseException
  {
    if (paramExtensionInfo == null) {}
    for (paramBuilder = paramBuilder.newBuilderForField(paramFieldDescriptor); paramBoolean; paramBuilder = paramExtensionInfo.defaultInstance.newBuilderForType())
    {
      paramExtensionRegistry = paramTokenizer.consumeByteString();
      try
      {
        paramBuilder.mergeFrom(paramExtensionRegistry);
        paramBuilder = paramBuilder.build();
        return paramBuilder;
      }
      catch (InvalidProtocolBufferException paramBuilder)
      {
        throw paramTokenizer.parseException("Failed to build " + paramFieldDescriptor.getFullName() + " from " + paramExtensionRegistry);
      }
    }
    paramTokenizer.consume("{");
    while (!paramTokenizer.tryConsume("}"))
    {
      if (paramTokenizer.atEnd()) {
        throw paramTokenizer.parseException("Expected \"" + "}" + "\".");
      }
      mergeField(paramTokenizer, paramExtensionRegistry, paramBuilder);
      if (!paramTokenizer.tryConsume(",")) {}
    }
    return paramBuilder.build();
  }
  
  private Object handlePrimitive(Tokenizer paramTokenizer, Descriptors.FieldDescriptor paramFieldDescriptor)
    throws JsonFormat.ParseException
  {
    Descriptors.EnumValueDescriptor localEnumValueDescriptor = null;
    if ("null".equals(paramTokenizer.currentToken()))
    {
      paramTokenizer.consume("null");
      paramFieldDescriptor = localEnumValueDescriptor;
    }
    Descriptors.EnumDescriptor localEnumDescriptor;
    label268:
    String str;
    do
    {
      int i;
      do
      {
        return paramFieldDescriptor;
        switch (JsonFormat.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[paramFieldDescriptor.getType().ordinal()])
        {
        default: 
          return null;
        case 1: 
        case 3: 
        case 5: 
          return Integer.valueOf(paramTokenizer.consumeInt32());
        case 2: 
        case 4: 
        case 6: 
          return Long.valueOf(paramTokenizer.consumeInt64());
        case 10: 
        case 11: 
          return Integer.valueOf(paramTokenizer.consumeUInt32());
        case 12: 
        case 13: 
          return Long.valueOf(paramTokenizer.consumeUInt64());
        case 7: 
          return Float.valueOf(paramTokenizer.consumeFloat());
        case 8: 
          return Double.valueOf(paramTokenizer.consumeDouble());
        case 9: 
          return Boolean.valueOf(paramTokenizer.consumeBoolean());
        case 14: 
          return paramTokenizer.consumeString();
        case 15: 
          return paramTokenizer.consumeByteString();
        case 16: 
          localEnumDescriptor = paramFieldDescriptor.getEnumType();
          if (!paramTokenizer.lookingAtInteger()) {
            break label268;
          }
          i = paramTokenizer.consumeInt32();
          localEnumValueDescriptor = localEnumDescriptor.findValueByNumber(i);
          paramFieldDescriptor = localEnumValueDescriptor;
        }
      } while (localEnumValueDescriptor != null);
      throw paramTokenizer.parseExceptionPreviousToken("Enum type \"" + localEnumDescriptor.getFullName() + "\" has no value with number " + i + ".");
      str = paramTokenizer.consumeIdentifier();
      localEnumValueDescriptor = localEnumDescriptor.findValueByName(str);
      paramFieldDescriptor = localEnumValueDescriptor;
    } while (localEnumValueDescriptor != null);
    throw paramTokenizer.parseExceptionPreviousToken("Enum type \"" + localEnumDescriptor.getFullName() + "\" has no value named \"" + str + "\".");
    throw new RuntimeException("Can't get here.");
  }
  
  private void handleValue(Tokenizer paramTokenizer, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder, Descriptors.FieldDescriptor paramFieldDescriptor, ExtensionRegistry.ExtensionInfo paramExtensionInfo, boolean paramBoolean)
    throws JsonFormat.ParseException
  {
    if (paramFieldDescriptor.getJavaType() == Descriptors.FieldDescriptor.JavaType.MESSAGE) {}
    for (paramTokenizer = handleObject(paramTokenizer, paramExtensionRegistry, paramBuilder, paramFieldDescriptor, paramExtensionInfo, paramBoolean);; paramTokenizer = handlePrimitive(paramTokenizer, paramFieldDescriptor))
    {
      if (paramTokenizer != null)
      {
        if (!paramFieldDescriptor.isRepeated()) {
          break;
        }
        paramBuilder.addRepeatedField(paramFieldDescriptor, paramTokenizer);
      }
      return;
    }
    paramBuilder.setField(paramFieldDescriptor, paramTokenizer);
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
        localObject = prepareNumberFromString(paramString.substring(m));
        if (((String)localObject).length() >= 16) {
          break label237;
        }
        l1 = Long.parseLong((String)localObject, j);
        if (k == 0) {
          break label427;
        }
        l1 = -l1;
      }
      label237:
      label421:
      label424:
      label427:
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
                break label421;
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
              break label424;
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
  
  private static String prepareNumberFromString(String paramString)
  {
    String str = paramString.replaceAll("\"", "");
    paramString = str;
    if (str.equals("")) {
      paramString = "0";
    }
    return paramString;
  }
  
  private void printFieldValue(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    switch (JsonFormat.1.$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type[paramFieldDescriptor.getType().ordinal()])
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
      paramJsonGenerator.print(paramObject.toString());
      return;
    case 10: 
    case 11: 
      paramJsonGenerator.print(TextUtils.unsignedToString(((Integer)paramObject).intValue()));
      return;
    case 12: 
    case 13: 
      paramJsonGenerator.print(TextUtils.unsignedToString(((Long)paramObject).longValue()));
      return;
    case 14: 
      paramJsonGenerator.print("\"");
      paramJsonGenerator.print(escapeText((String)paramObject));
      paramJsonGenerator.print("\"");
      return;
    case 15: 
      paramJsonGenerator.print("\"");
      paramJsonGenerator.print(this.byteSerializer.escapeBytes((ByteString)paramObject));
      paramJsonGenerator.print("\"");
      return;
    case 16: 
      paramJsonGenerator.print("\"");
      paramJsonGenerator.print(((Descriptors.EnumValueDescriptor)paramObject).getName());
      paramJsonGenerator.print("\"");
      return;
    }
    paramJsonGenerator.print("{");
    print((Message)paramObject, paramJsonGenerator);
    paramJsonGenerator.print("}");
  }
  
  private void printSingleField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    if (paramFieldDescriptor.isExtension())
    {
      paramJsonGenerator.print("\"");
      if ((paramFieldDescriptor.getContainingType().getOptions().getMessageSetWireFormat()) && (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.MESSAGE) && (paramFieldDescriptor.isOptional()) && (paramFieldDescriptor.getExtensionScope() == paramFieldDescriptor.getMessageType()))
      {
        paramJsonGenerator.print(paramFieldDescriptor.getMessageType().getFullName());
        paramJsonGenerator.print("\"");
        if (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE) {
          break label212;
        }
        paramJsonGenerator.print(": ");
        paramJsonGenerator.indent();
      }
    }
    for (;;)
    {
      label92:
      if (paramFieldDescriptor.isRepeated())
      {
        paramJsonGenerator.print("[");
        paramObject = ((List)paramObject).iterator();
        for (;;)
        {
          if (((Iterator)paramObject).hasNext())
          {
            printFieldValue(paramFieldDescriptor, ((Iterator)paramObject).next(), paramJsonGenerator);
            if (((Iterator)paramObject).hasNext())
            {
              paramJsonGenerator.print(",");
              continue;
              paramJsonGenerator.print(paramFieldDescriptor.getFullName());
              break;
              paramJsonGenerator.print("\"");
              if (paramFieldDescriptor.getType() == Descriptors.FieldDescriptor.Type.GROUP) {
                paramJsonGenerator.print(paramFieldDescriptor.getMessageType().getName());
              }
              for (;;)
              {
                paramJsonGenerator.print("\"");
                break;
                paramJsonGenerator.print(paramFieldDescriptor.getName());
              }
              label212:
              paramJsonGenerator.print(": ");
              break label92;
            }
          }
        }
        paramJsonGenerator.print("]");
      }
    }
    do
    {
      return;
      printFieldValue(paramFieldDescriptor, paramObject, paramJsonGenerator);
    } while (paramFieldDescriptor.getJavaType() != Descriptors.FieldDescriptor.JavaType.MESSAGE);
    paramJsonGenerator.outdent();
  }
  
  static String unescapeText(String paramString)
    throws InvalidEscapeSequence
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = paramString.toCharArray();
    int i = 0;
    if (i < paramString.length)
    {
      char c = paramString[i];
      if (c == '\\') {
        if (i + 1 < paramString.length)
        {
          i += 1;
          c = paramString[i];
          switch (c)
          {
          default: 
            throw new InvalidEscapeSequence("Invalid escape sequence: '\\" + c + "'");
          case 'b': 
            localStringBuilder.append('\b');
          }
        }
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append('\f');
        continue;
        localStringBuilder.append('\n');
        continue;
        localStringBuilder.append('\r');
        continue;
        localStringBuilder.append('\t');
        continue;
        localStringBuilder.append('\\');
        continue;
        localStringBuilder.append('/');
        continue;
        localStringBuilder.append('"');
        continue;
        localStringBuilder.append('\'');
        continue;
        if (i + 4 < paramString.length)
        {
          i += 1;
          localStringBuilder.append((char)Integer.parseInt(new String(paramString, i, 4), 16));
          i += 3;
        }
        else
        {
          throw new InvalidEscapeSequence("Invalid escape sequence: '\\u' at end of string.");
          throw new InvalidEscapeSequence("Invalid escape sequence: '\\' at end of string.");
          localStringBuilder.append(c);
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public void merge(CharSequence paramCharSequence, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws JsonFormat.ParseException
  {
    paramCharSequence = new Tokenizer(this.byteSerializer, paramCharSequence);
    paramCharSequence.consume("{");
    while (!paramCharSequence.tryConsume("}")) {
      mergeField(paramCharSequence, paramExtensionRegistry, paramBuilder);
    }
    if (!paramCharSequence.atEnd()) {
      throw paramCharSequence.parseException("Expecting the end of the stream, but there seems to be more data!  Check the input for a valid JSON format.");
    }
  }
  
  protected void mergeField(Tokenizer paramTokenizer, ExtensionRegistry paramExtensionRegistry, Message.Builder paramBuilder)
    throws JsonFormat.ParseException
  {
    Object localObject2 = null;
    Descriptors.Descriptor localDescriptor = paramBuilder.getDescriptorForType();
    boolean bool2 = false;
    String str = paramTokenizer.consumeIdentifier();
    Descriptors.FieldDescriptor localFieldDescriptor = localDescriptor.findFieldByName(str);
    Object localObject1 = localFieldDescriptor;
    if (localFieldDescriptor == null)
    {
      localFieldDescriptor = localDescriptor.findFieldByName(str.toLowerCase(Locale.US));
      localObject1 = localFieldDescriptor;
      if (localFieldDescriptor != null)
      {
        localObject1 = localFieldDescriptor;
        if (localFieldDescriptor.getType() != Descriptors.FieldDescriptor.Type.GROUP) {
          localObject1 = null;
        }
      }
    }
    if ((localObject1 != null) && (((Descriptors.FieldDescriptor)localObject1).getType() == Descriptors.FieldDescriptor.Type.GROUP) && (!((Descriptors.FieldDescriptor)localObject1).getMessageType().getName().equals(str))) {}
    for (;;)
    {
      localObject1 = localObject2;
      boolean bool1 = bool2;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        bool1 = bool2;
        if (TextUtils.isDigits(str))
        {
          localObject1 = localDescriptor.findFieldByNumber(Integer.parseInt(str));
          bool1 = true;
        }
      }
      localObject2 = paramExtensionRegistry.findExtensionByName(str);
      if (localObject2 != null)
      {
        if (((ExtensionRegistry.ExtensionInfo)localObject2).descriptor.getContainingType() != localDescriptor) {
          throw paramTokenizer.parseExceptionPreviousToken("Extension \"" + str + "\" does not extend message type \"" + localDescriptor.getFullName() + "\".");
        }
        localObject1 = ((ExtensionRegistry.ExtensionInfo)localObject2).descriptor;
      }
      for (;;)
      {
        if (localObject1 == null) {
          handleMissingField(paramTokenizer, paramExtensionRegistry, paramBuilder);
        }
        if (localObject1 != null)
        {
          paramTokenizer.consume(":");
          if (paramTokenizer.tryConsume("[")) {
            while (!paramTokenizer.tryConsume("]"))
            {
              handleValue(paramTokenizer, paramExtensionRegistry, paramBuilder, (Descriptors.FieldDescriptor)localObject1, (ExtensionRegistry.ExtensionInfo)localObject2, bool1);
              paramTokenizer.tryConsume(",");
            }
          }
          handleValue(paramTokenizer, paramExtensionRegistry, paramBuilder, (Descriptors.FieldDescriptor)localObject1, (ExtensionRegistry.ExtensionInfo)localObject2, bool1);
        }
        if (paramTokenizer.tryConsume(",")) {
          mergeField(paramTokenizer, paramExtensionRegistry, paramBuilder);
        }
        return;
      }
      localObject2 = localObject1;
    }
  }
  
  protected void print(Message paramMessage, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    Iterator localIterator = paramMessage.getAllFields().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      printField((Descriptors.FieldDescriptor)localEntry.getKey(), localEntry.getValue(), paramJsonGenerator);
      if (localIterator.hasNext()) {
        paramJsonGenerator.print(",");
      }
    }
    if (paramMessage.getUnknownFields().asMap().size() > 0) {
      paramJsonGenerator.print(", ");
    }
    printUnknownFields(paramMessage.getUnknownFields(), paramJsonGenerator);
  }
  
  public void print(Message paramMessage, Appendable paramAppendable)
    throws IOException
  {
    paramAppendable = new JsonGenerator(paramAppendable);
    paramAppendable.print("{");
    print(paramMessage, paramAppendable);
    paramAppendable.print("}");
  }
  
  public void print(UnknownFieldSet paramUnknownFieldSet, Appendable paramAppendable)
    throws IOException
  {
    paramAppendable = new JsonGenerator(paramAppendable);
    paramAppendable.print("{");
    printUnknownFields(paramUnknownFieldSet, paramAppendable);
    paramAppendable.print("}");
  }
  
  public void printField(Descriptors.FieldDescriptor paramFieldDescriptor, Object paramObject, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    printSingleField(paramFieldDescriptor, paramObject, paramJsonGenerator);
  }
  
  protected void printUnknownFields(UnknownFieldSet paramUnknownFieldSet, JsonGenerator paramJsonGenerator)
    throws IOException
  {
    paramUnknownFieldSet = paramUnknownFieldSet.asMap().entrySet().iterator();
    int j = 1;
    while (paramUnknownFieldSet.hasNext())
    {
      Object localObject2 = (Map.Entry)paramUnknownFieldSet.next();
      Object localObject1 = (UnknownFieldSet.Field)((Map.Entry)localObject2).getValue();
      int i;
      label108:
      long l;
      if (j != 0)
      {
        j = 0;
        paramJsonGenerator.print("\"");
        paramJsonGenerator.print(((Integer)((Map.Entry)localObject2).getKey()).toString());
        paramJsonGenerator.print("\"");
        paramJsonGenerator.print(": [");
        localObject2 = ((UnknownFieldSet.Field)localObject1).getVarintList().iterator();
        i = 1;
        if (!((Iterator)localObject2).hasNext()) {
          break label171;
        }
        l = ((Long)((Iterator)localObject2).next()).longValue();
        if (i == 0) {
          break label161;
        }
        i = 0;
      }
      for (;;)
      {
        paramJsonGenerator.print(TextUtils.unsignedToString(l));
        break label108;
        paramJsonGenerator.print(", ");
        break;
        label161:
        paramJsonGenerator.print(", ");
      }
      label171:
      localObject2 = ((UnknownFieldSet.Field)localObject1).getFixed32List().iterator();
      if (((Iterator)localObject2).hasNext())
      {
        int k = ((Integer)((Iterator)localObject2).next()).intValue();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          paramJsonGenerator.print(String.format(null, "0x%08x", new Object[] { Integer.valueOf(k) }));
          break;
          paramJsonGenerator.print(", ");
        }
      }
      localObject2 = ((UnknownFieldSet.Field)localObject1).getFixed64List().iterator();
      if (((Iterator)localObject2).hasNext())
      {
        l = ((Long)((Iterator)localObject2).next()).longValue();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          paramJsonGenerator.print(String.format(null, "0x%016x", new Object[] { Long.valueOf(l) }));
          break;
          paramJsonGenerator.print(", ");
        }
      }
      localObject2 = ((UnknownFieldSet.Field)localObject1).getLengthDelimitedList().iterator();
      if (((Iterator)localObject2).hasNext())
      {
        ByteString localByteString = (ByteString)((Iterator)localObject2).next();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          paramJsonGenerator.print("\"");
          paramJsonGenerator.print(TextUtils.escapeBytes(localByteString));
          paramJsonGenerator.print("\"");
          break;
          paramJsonGenerator.print(", ");
        }
      }
      localObject1 = ((UnknownFieldSet.Field)localObject1).getGroupList().iterator();
      if (((Iterator)localObject1).hasNext())
      {
        localObject2 = (UnknownFieldSet)((Iterator)localObject1).next();
        if (i != 0) {
          i = 0;
        }
        for (;;)
        {
          paramJsonGenerator.print("{");
          printUnknownFields((UnknownFieldSet)localObject2, paramJsonGenerator);
          paramJsonGenerator.print("}");
          break;
          paramJsonGenerator.print(", ");
        }
      }
      paramJsonGenerator.print("]");
    }
  }
  
  protected static class JsonGenerator
  {
    boolean atStartOfLine = true;
    StringBuilder indent = new StringBuilder();
    Appendable output;
    
    public JsonGenerator(Appendable paramAppendable)
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
    
    public void indent()
    {
      this.indent.append("  ");
    }
    
    public void outdent()
    {
      int i = this.indent.length();
      if (i == 0) {
        throw new IllegalArgumentException(" Outdent() without matching Indent().");
      }
      this.indent.delete(i - 2, i);
    }
    
    public void print(CharSequence paramCharSequence)
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
    private static final long serialVersionUID = 1L;
    
    public ParseException(String paramString)
    {
      super();
    }
  }
  
  protected static class Tokenizer
  {
    private static final Pattern DOUBLE_INFINITY = Pattern.compile("-?inf(inity)?", 2);
    private static final Pattern FLOAT_INFINITY = Pattern.compile("-?inf(inity)?f?", 2);
    private static final Pattern FLOAT_NAN = Pattern.compile("nanf?", 2);
    private static final Pattern TOKEN;
    private static final Pattern WHITESPACE = Pattern.compile("(\\s|(#.*$))++", 8);
    private final ByteSerializer byteSerializer;
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
    
    public Tokenizer(ByteSerializer paramByteSerializer, CharSequence paramCharSequence)
    {
      this.byteSerializer = paramByteSerializer;
      this.text = paramCharSequence;
      this.matcher = WHITESPACE.matcher(paramCharSequence);
      skipWhitespace();
      nextToken();
    }
    
    private JsonFormat.ParseException floatParseException(NumberFormatException paramNumberFormatException)
    {
      return parseException("Couldn't parse number: " + paramNumberFormatException.getMessage());
    }
    
    private JsonFormat.ParseException integerParseException(NumberFormatException paramNumberFormatException)
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
    
    public boolean atEnd()
    {
      return this.currentToken.length() == 0;
    }
    
    public void consume(String paramString)
      throws JsonFormat.ParseException
    {
      if (!tryConsume(paramString)) {
        throw parseException("Expected \"" + paramString + "\".");
      }
    }
    
    public boolean consumeBoolean()
      throws JsonFormat.ParseException
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
    
    public ByteString consumeByteString()
      throws JsonFormat.ParseException
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
        Object localObject = this.currentToken.substring(1, this.currentToken.length() - 1);
        localObject = this.byteSerializer.unescapeBytes((CharSequence)localObject);
        nextToken();
        return (ByteString)localObject;
      }
      catch (InvalidEscapeSequence localInvalidEscapeSequence)
      {
        throw parseException(localInvalidEscapeSequence.getMessage());
      }
    }
    
    public double consumeDouble()
      throws JsonFormat.ParseException
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
        double d = Double.parseDouble(JsonFormat.prepareNumberFromString(this.currentToken));
        nextToken();
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw floatParseException(localNumberFormatException);
      }
    }
    
    public float consumeFloat()
      throws JsonFormat.ParseException
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
        float f = Float.parseFloat(JsonFormat.prepareNumberFromString(this.currentToken));
        nextToken();
        return f;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw floatParseException(localNumberFormatException);
      }
    }
    
    public String consumeIdentifier()
      throws JsonFormat.ParseException
    {
      int i = 0;
      while (i < this.currentToken.length())
      {
        char c = this.currentToken.charAt(i);
        if ((('a' > c) || (c > 'z')) && (('A' > c) || (c > 'Z')) && (('0' > c) || (c > '9')) && (c != '_') && (c != '.') && (c != '"')) {
          throw parseException("Expected identifier. -" + c);
        }
        i += 1;
      }
      String str = this.currentToken.replaceAll("\"|'", "");
      nextToken();
      return str;
    }
    
    public int consumeInt32()
      throws JsonFormat.ParseException
    {
      try
      {
        int i = JsonFormat.parseInt32(this.currentToken);
        nextToken();
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public long consumeInt64()
      throws JsonFormat.ParseException
    {
      try
      {
        long l = JsonFormat.parseInt64(this.currentToken);
        nextToken();
        return l;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public String consumeString()
      throws JsonFormat.ParseException
    {
      int i = 0;
      if (this.currentToken.length() > 0) {
        i = this.currentToken.charAt(0);
      }
      if ((i != 34) && (i != 39)) {
        try
        {
          String str1 = this.currentToken.replace(',', '.');
          Double.parseDouble(str1);
          nextToken();
          return str1;
        }
        catch (NumberFormatException localNumberFormatException)
        {
          throw parseException("Expected string.");
        }
      }
      if ((this.currentToken.length() < 2) || (this.currentToken.charAt(this.currentToken.length() - 1) != i)) {
        throw parseException("String missing ending quote.");
      }
      try
      {
        String str2 = JsonFormat.unescapeText(this.currentToken.substring(1, this.currentToken.length() - 1));
        nextToken();
        return str2;
      }
      catch (InvalidEscapeSequence localInvalidEscapeSequence)
      {
        throw parseException(localInvalidEscapeSequence.getMessage());
      }
    }
    
    public int consumeUInt32()
      throws JsonFormat.ParseException
    {
      try
      {
        int i = JsonFormat.parseUInt32(this.currentToken);
        nextToken();
        return i;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public long consumeUInt64()
      throws JsonFormat.ParseException
    {
      try
      {
        long l = JsonFormat.parseUInt64(this.currentToken);
        nextToken();
        return l;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw integerParseException(localNumberFormatException);
      }
    }
    
    public String currentToken()
    {
      return this.currentToken;
    }
    
    public boolean lookingAtBoolean()
    {
      if (this.currentToken.length() == 0) {}
      while ((!"true".equals(this.currentToken)) && (!"false".equals(this.currentToken))) {
        return false;
      }
      return true;
    }
    
    public boolean lookingAtFloat()
    {
      return (lookingAtInteger()) && (this.currentToken.contains("."));
    }
    
    public boolean lookingAtInteger()
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
    
    public void nextToken()
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
    
    public JsonFormat.ParseException parseException(String paramString)
    {
      return new JsonFormat.ParseException(this.line + 1 + ":" + (this.column + 1) + ": " + paramString);
    }
    
    public JsonFormat.ParseException parseExceptionPreviousToken(String paramString)
    {
      return new JsonFormat.ParseException(this.previousLine + 1 + ":" + (this.previousColumn + 1) + ": " + paramString);
    }
    
    public boolean tryConsume(String paramString)
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\pbformat\JsonFormat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */