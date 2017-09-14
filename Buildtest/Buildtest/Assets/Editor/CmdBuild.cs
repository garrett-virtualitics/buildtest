// Workaround - unity cmd line build options do not allow enabling development mode
//
// To use from cmd line:
//
// PATH/Unity.exe -batchmode -projectPath PATH -executeMethod CmdBuild.DevBuild -quit


using UnityEngine;
using UnityEditor;
using System.Diagnostics;
using System.Collections;
using System.Linq;

public class CmdBuild : MonoBehaviour
{
    private static string[] EnabledScenes()
    {
        return (from scene in EditorBuildSettings.scenes where scene.enabled select scene.path).ToArray();
    }

    public static void DevBuild()
    {
        BuildPipeline.BuildPlayer(EnabledScenes(), "iViz_Build.exe", BuildTarget.StandaloneWindows64, BuildOptions.Development);
    }
}