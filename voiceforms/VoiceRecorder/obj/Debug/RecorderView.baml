   M S B A M L   `   `   `  ����M  IVoiceRecorder.Core, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS<clr-namespace:VoiceRecorder.Core;assembly=VoiceRecorder.CoreVoiceRecorder.Core  5       VoiceRecorder    VoiceRecorder.RecorderView   5      W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      Imy<clr-namespace:VoiceRecorder.Core;assembly=VoiceRecorder.Core    5        � 	Resources  5       �� 
TargetType �� Property �� Value �� 
TargetType �� 
StartPoint �� EndPoint � Offset � Color��%u  '�       �� 5   
   " �5      .�5      ��  � �� 5	      �� 5
      " �6&   .R�5      � $��14��6   $	��200��6.   .+�5      �� $��
PART_Track��6%   ��5   "   �� 5   &   $	 0,0&�6:   $	 1,0&�6K   .��5   *   � $ 0Q�67   $ 	#FF00FF00��6B   � 5   *   $	 0.9Q�67   $ 	#FFFFFF00��6D   � 5   *   $ 1Q�67   $ 	#FFFF0000��6B   5   '   5      ]� 5      .+�5   "   �� $��PART_Indicator��6B   $
��Left=�6,   6B   �� 5   "   $
��Mask��6,   ���#C0C0C068   5      �� 5      $��1q�6%   ���#88888869   5      5      5      5      5      .��5       �� 
�������.+�5!   
   �� $��5q�6   $��Center=�6   $
��Bold"�68   $��20(�6J   .��6X   .NET Voice Recorder6m   �� 5"   
   $��5q�6   .��6   -+Check the levels before starting recording:6H   � 5#   
   $��5q�6   	 � Orientation$	 
Horizontal=�6!   $��20��6k   
 � Value
 6:   �� *CurrentInputLevel+ �� Mode$ OneWay=�6k   �� 5$   
   $��5q�6   .��6   Microphone Level:6.   �� 5%   
   $��5q�6    �� Orientation$ 
Horizontal=�6    � Maximum$	 100Q�6d   
 65   �� *MicrophoneLevel+$ TwoWay=�6d   �� 5&   
    �� Orientation$ 
Horizontal=�6   .+�5'      ��    CircleButton#��[  6   $��5q�6e    � ToolTip$ Start Recording��6p   ��6;   �� *BeginRecordingCommand+6p   �� 5(        
StopButton#��[ 6   $��5q�6Y   $ Stop Recording��6d   ��69   �� *StopCommand+6d   �� 5)      
���   �$��2q�6)    �� CornerRadius$ 3��6=   $��2q�6N   ._�5*      �� $	��3,1q�6   $
��Bold"�6G   $��16(�6Y   ��6)   �� *RecordedTime+6Y   5+      5,      /   )VoiceRecorder.Core.PolygonWaveFormControl  5-   
   $��5q�6$   $��40��6/      SampleAggregator 6;   �� *SampleAggregator+{�6i   �� *ShowWaveForm+5.      5/      