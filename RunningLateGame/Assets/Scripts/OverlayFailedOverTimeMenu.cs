/*
 * author: mark joshwel
 * date: 11/8/2024
 * description: TODO
 */

/// <summary>
///     TODO
/// </summary>
public class OverlayFailedOverTimeMenu : CommonMenu
{
    /// <summary>
    ///     function to associate a display state with the menu,
    ///     and subscribe button events to their respective functions
    /// </summary>
    public override void OnEnable()
    {
        // set the associated state and call the base OnEnable
        associatedState = GameManager.DisplayState.OverlayFailedOverTimeMenu;
        base.OnEnable();
    }
}